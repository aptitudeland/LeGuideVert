class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.integer :order
      t.string :name
      t.text :description
      t.string :image_path
      t.references :step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
