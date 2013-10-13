class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.references :season, index: true
      t.string :name
    end
  end
end
