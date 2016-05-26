class CreateFireworkLocations < ActiveRecord::Migration
  def change
    create_table :firework_locations do |t|
      t.string :location
      t.belongs_to :firework, index: true

      t.timestamps null: false
    end
  end
end
