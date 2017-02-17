class AddUserToProductsAndAdminBoolean < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :owner_id, :integer
    add_column :users, :admin, :boolean
  end
end
