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

ActiveRecord::Schema.define(version: 20131013170955) do

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
    t.integer "team_id"
    t.string  "surname"
    t.string  "given_name"
    t.string  "position"
    t.integer "games"
    t.integer "games_started"
    t.integer "at_bats"
    t.integer "runs"
    t.integer "hits"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "rbi"
    t.integer "steals"
    t.integer "caught_stealing"
    t.integer "sacrifice_hits"
    t.integer "sacrifice_flies"
    t.integer "errors"
    t.integer "pb"
    t.integer "walks"
    t.integer "struck_out"
    t.integer "hit_by_pitch"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "seasons", force: true do |t|
    t.string "year"
  end

  create_table "teams", force: true do |t|
    t.integer "division_id"
    t.string  "city"
    t.string  "name"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end
