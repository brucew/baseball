module PlayersHelper
  def column_sort_tag(column)
    case @order
      when column + ' DESC'
        order = column + ' ASC'
        icon = 'icon-chevron-down'
      when column + ' ASC'
        order = column + ' DESC'
        icon = 'icon-chevron-up'
      else
        order = column + ' DESC'
    end

    html = link_to column, season_players_path(order: order)
    html << (' <i class="' + icon + '"></i>').html_safe if icon
    html
  end

end
