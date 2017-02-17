class AddTables < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :decimal
      t.column :image, :string
    end
    create_table :comments do |t|
      t.column :content, :string
      t.column :product_id, :integer
      t.column :user_id, :integer
    end
  end
end
