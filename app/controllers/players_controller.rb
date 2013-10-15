class PlayersController < ApplicationController
  respond_to :html

  def index
    @season = Season.where(year: 1998).first
    @players = @season.players.limit(100)
    respond_with(@players)
  end
end
