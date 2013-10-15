class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :year
    end
    add_index :seasons, :year
  end
end
