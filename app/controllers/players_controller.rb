class PlayersController < ApplicationController
  respond_to :html

  def index
    @o = params[:o] || 'AVG DESC'
    @season = Season.from_param(params[:season_id])
    @players = @season.players.order(@o).limit(100)
    respond_with(@players)
  end
end
