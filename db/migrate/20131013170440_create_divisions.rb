class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.references :league, index: true
      t.string :name
    end
  end
end
