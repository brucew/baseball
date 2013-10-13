class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :division, index: true
      t.string :city
      t.string :name
    end
  end
end
