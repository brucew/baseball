class PlayersController < ApplicationController
  respond_to :html

  def index
    @order = params[:order] || 'AVG DESC'
    @season = Season.from_param(params[:season_id])
    @players = @season.players.order(@order).page params[:page]
    respond_with(@players)
  end
end
