class AddUseridToProductRemoveOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :user_id, :integer
    remove_column :products, :owner_id, :integer
  end
end
