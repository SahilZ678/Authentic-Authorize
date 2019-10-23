class AddIndexToProductName < ActiveRecord::Migration[5.2]
  def change
    add_index :products, :name
  end
end
