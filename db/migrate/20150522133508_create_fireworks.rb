class CreateFireworks < ActiveRecord::Migration
  def change
    create_table :fireworks do |t|
      t.string :firework_name
      t.string :style
      t.text :description

      t.timestamps
    end
  end
end
