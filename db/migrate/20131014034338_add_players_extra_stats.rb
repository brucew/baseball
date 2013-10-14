class AddPlayersExtraStats < ActiveRecord::Migration
  def change
    add_column :players, :hits, :integer, default: 0, null: false
    add_column :players, :doubles, :integer, default: 0, null: false
    add_column :players, :triples, :integer, default: 0, null: false
    add_column :players, :at_bats, :integer, default: 0, null: false
    add_column :players, :base_on_balls, :integer, default: 0, null: false
    add_column :players, :hit_by_pitch, :integer, default: 0, null: false
    add_column :players, :sacrifice_flies, :integer, default: 0, null: false
  end
end
