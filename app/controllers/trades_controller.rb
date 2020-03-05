class TradesController < ApplicationController
  def index
    @trades = Trade.all
    render json: @trades
  end

  def show
    @trade = Trade.find(params[:id])
    if @trade
      render json: {
               trade: @trade,
             }
    else
      render json: {
               status: 500,
               errors: ["trade not found"],
             }
    end
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.save
      render json: {
               status: :created,
               trade: @trade,
             }
    else
      render json: {
               status: 500,
               errors: @trade.errors.full_messages,
             }
    end
  end

  def update
    @trade = Trade.find(params[:id])
    @trade.update(trade_params)
    render json: @trade
  end

  private

  def trade_params
    params.require(:trade).permit(:user_id, :stock, :cost_per_share, :quantity)
  end
end
