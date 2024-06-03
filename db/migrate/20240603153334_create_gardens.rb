class CreateGardens < ActiveRecord::Migration[7.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :size
      t.string :exposition
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
