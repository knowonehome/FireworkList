class CreateFireworkYears < ActiveRecord::Migration
  def change
    create_table :firework_years do |t|
      t.integer :year
      t.timestamps null: false
    end
  end
end
