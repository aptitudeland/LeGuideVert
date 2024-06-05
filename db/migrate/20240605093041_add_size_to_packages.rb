class AddSizeToPackages < ActiveRecord::Migration[7.1]
  def change
    add_column :packages, :size, :string
  end
end
