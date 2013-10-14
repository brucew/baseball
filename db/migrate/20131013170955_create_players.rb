class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team, index: true
      t.string :surname
      t.string :given_name
      t.string :position
      t.integer :avg
      t.integer :hr
      t.integer :rbi
      t.integer :runs
      t.integer :sb
      t.integer :ops
    end
  end
end
