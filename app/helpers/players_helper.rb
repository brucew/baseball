module PlayersHelper
  def column_sort_tag(column)
    order = (@o == column + ' DESC') ? column + ' ASC' : column + ' DESC'
    link_to column, players_path(o: order)
  end
end
