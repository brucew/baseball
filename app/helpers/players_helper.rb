module PlayersHelper
  def column_sort_tag(column)
    order = (@o == column + ' DESC') ? column + ' ASC' : column + ' DESC'
    link_to column, season_players_path(o: order)
  end
end
