class StocksController < ApplicationController
  def search
    stock = Stock.new_lookup(params[:stock])
    render json: stock, content_type: "application/json"
  end
end
