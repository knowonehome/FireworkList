class CreateFireworkComments < ActiveRecord::Migration
  def change
    create_table :firework_comments do |t|
      t.belongs_to :firework, index: true
      t.text :comment
      t.timestamps null: false
    end
  end
end
