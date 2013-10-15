class PlayersController < ApplicationController
  respond_to :html

  def index
    @o = params[:o] || 'AVG DESC'
    @season = Season.from_param(params[:season_id])
    @players = @season.players.order(@o).page params[:page]
    respond_with(@players)
  end
end
