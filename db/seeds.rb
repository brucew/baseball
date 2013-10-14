def attrs_from_xml(node, map)
  attrs = {}
  map.each do |attr, xpath|
    value = node.at_xpath('./' + xpath)
    attrs[attr] = value.inner_text if value
  end
  attrs
end

document = Nokogiri::XML(File.open 'db/seed_data/1998statistics.xml', File::RDONLY)
document.xpath('/SEASON').each do |season_node|
  attrs = attrs_from_xml(season_node, year: 'YEAR')
  season = Season.create(attrs)

  season_node.xpath('./LEAGUE').each do |league_node|
    attrs = attrs_from_xml(league_node, name: 'LEAGUE_NAME')
    league = League.create(attrs.merge(season: season))

    league_node.xpath('./DIVISION').each do |division_node|
      attrs = attrs_from_xml(division_node, name: 'DIVISION_NAME')
      division = Division.create(attrs.merge(league: league))

      division_node.xpath('./TEAM').each do |team_node|
        attrs = attrs_from_xml(team_node, city: 'TEAM_CITY', name: 'TEAM_NAME')
        team = Team.create(attrs.merge(division: division))

        team_node.xpath('./PLAYER').each do |player_node|
          attrs = attrs_from_xml(player_node,
                                 surname: 'SURNAME', given_name: 'GIVEN_NAME', position: 'POSITION',
                                 hr: 'HOME_RUNS', rbi: 'RBI', runs: 'RUNS', sb: 'STEALS',
                                 hits: 'HITS', at_bats: 'AT_BATS', base_on_balls: 'WALKS', hit_by_pitch: 'HIT_BY_PITCH',
                                 sacrifice_flies: 'SACRIFICE_FLIES', doubles: 'DOUBLES', triples: 'TRIPLES')
          Player.create(attrs.merge(team: team))
        end

      end

    end

  end

end