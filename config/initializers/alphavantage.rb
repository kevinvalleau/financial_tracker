require 'alphavantage'
# EDITOR="code --wait" rails credentials:edit pour lire la clé encryptée
Alphavantage.configure do |config|
  config.api_key = Rails.application.credentials.alphavantage[:api_key]
end
