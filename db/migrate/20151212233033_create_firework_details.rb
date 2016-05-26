class CreateFireworkDetails < ActiveRecord::Migration
  def change
    create_table :firework_details do |t|
      t.decimal :cost
      t.integer :purchased
      t.belongs_to :firework, index: true

      t.timestamps
    end
  end
end
