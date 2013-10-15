# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131014034338) do

  create_table "divisions", force: true do |t|
    t.integer "league_id"
    t.string  "name"
  end

  add_index "divisions", ["league_id"], name: "index_divisions_on_league_id"

  create_table "leagues", force: true do |t|
    t.integer "season_id"
    t.string  "name"
  end

  add_index "leagues", ["season_id"], name: "index_leagues_on_season_id"

  create_table "players", force: true do |t|
    t.integer "season_id"
    t.integer "league_id"
    t.integer "division_id"
    t.integer "team_id"
    t.string  "surname"
    t.string  "given_name"
    t.string  "position"
    t.float   "avg",             default: 0.0
    t.integer "hr",              default: 0
    t.integer "rbi",             default: 0
    t.integer "runs",            default: 0
    t.integer "sb",              default: 0
    t.float   "ops",             default: 0.0
    t.integer "hits",            default: 0
    t.integer "doubles",         default: 0
    t.integer "triples",         default: 0
    t.integer "at_bats",         default: 0
    t.integer "base_on_balls",   default: 0
    t.integer "hit_by_pitch",    default: 0
    t.integer "sacrifice_flies", default: 0
  end

  add_index "players", ["season_id"], name: "index_players_on_season_id"
  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "seasons", force: true do |t|
    t.string "year"
  end

  add_index "seasons", ["year"], name: "index_seasons_on_year"

  create_table "teams", force: true do |t|
    t.integer "division_id"
    t.string  "city"
    t.string  "name"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end
