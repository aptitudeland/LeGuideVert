class ChangeColumnStatusGardenStep < ActiveRecord::Migration[7.1]
  def change
    change_column :garden_steps, :status, :integer, using: 'status::integer', default: 0
  end
end
