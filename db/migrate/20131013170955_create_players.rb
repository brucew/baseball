class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :season, index: true
      t.references :league
      t.references :division
      t.references :team, index: true
      t.string :surname
      t.string :given_name
      t.string :position
      t.float :avg, default: 0
      t.integer :hr, default: 0
      t.integer :rbi, default: 0
      t.integer :runs, default: 0
      t.integer :sb, default: 0
      t.float :ops, default: 0
    end
  end
end
