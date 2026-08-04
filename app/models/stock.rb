class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :name, :ticker, presence: true

  def self.new_lookup(ticker_symbol)
    client = FinnhubRuby::DefaultApi.new
    # https://github.com/Finnhub-Stock-API/finnhub-ruby
    # https://finnhub.io/docs/api/rate-limit
    profile = client.company_profile2({symbol: ticker_symbol})
    quote = client.quote(ticker_symbol)
    puts profile["name"]
    if profile["name"].blank? || quote["pc"].blank?
      return nil
    else
      return new(ticker: ticker_symbol, name: profile["name"], last_price: quote["pc"])
    end
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
end
