class CreateGardenSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :garden_steps do |t|
      t.string :status
      t.references :step, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
