class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    # https://github.com/codespore/alphavantage_ruby
    # https://www.alphavantage.co/documentation/
    quote = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    quote.previous_close #=> "719.6900"
  end
end
