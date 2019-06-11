class CreateFireworkYears < ActiveRecord::Migration[6.0]
  def change
    create_table :firework_years do |t|
      t.decimal :cost
      t.integer :purchased
      t.integer :year , limit: 4
      t.belongs_to :firework, null: false, foreign_key: true, index:true

      t.timestamps
    end
  end
end
