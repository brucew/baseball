class PlayersController < ApplicationController
  respond_to :html

  def index
    @o = params[:o] || 'AVG DESC'
    @season = Season.where(year: 1998).first
    @players = @season.players.order(@o).limit(100)
    respond_with(@players)
  end
end
