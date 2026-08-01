# frozen_string_literal: true
#
# FontawesomeRails configuration
#
# Notes:
# - All settings below are optional. Leaving them commented uses the defaults.
# - This gem vendors Free assets for Font Awesome 5/6/7 and provides view helpers.
#
FontawesomeRails.configure do |config|
  # Which major version to use for helper output and bundled asset selection.
  #
  # Supported values: 5, 6, 7
  # Default: 7
  #
  config.major_version = 6
#
  # How assets are delivered/configured.
  #
  # - :auto (default) => if Sprockets is present, register Sprockets precompile entries; otherwise do nothing
  # - :sprockets       => always treat as Sprockets (requires sprockets-rails)
  # - :none            => never touch asset configuration (you manage CSS/JS yourself)
  #
  # config.asset_delivery = :auto
#
  # When using Sprockets, automatically register Font Awesome assets for precompile.
  # This avoids needing `//= link ...` entries in the host app's `app/assets/config/manifest.js`.
  #
  # Default: true
  #
  # config.sprockets_precompile = true
#
  # If you use importmap-rails *and* want Font Awesome's SVG+JS runtime, you can opt-in
  # to a gem-provided importmap pin (based on `major_version`).
  #
  # If you only use inline SVG helpers (no JS), leave this disabled.
  #
  # Default: false
  #
  # config.importmap_pin = false
end
