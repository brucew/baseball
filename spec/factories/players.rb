require 'faker'

FactoryGirl.define do
  factory :player do
    season { Season.first }
    league { season.leagues.first }
    division { league.divisions.first }
    team { division.teams.first }
    surname Faker::Name.last_name
    given_name Faker::Name.first_name
    position Faker::Lorem.word
    hr Faker::Number.number(2)
    rbi Faker::Number.number(3)
    runs Faker::Number.number(3)
    sb Faker::Number.number(2)
    hits Faker::Number.number(2)
    doubles Faker::Number.number(2)
    triples Faker::Number.number(2)
    at_bats Faker::Number.number(3)
    base_on_balls Faker::Number.number(2)
    hit_by_pitch Faker::Number.number(1)
    sacrifice_flies Faker::Number.number(1)
  end
end
