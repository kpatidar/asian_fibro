class AddPriceAndQltyColInProduct < ActiveRecord::Migration
  def up
    add_column :products, :price, :integer
    add_column :products, :quality, :text
  end

  def down
    remove_column :products, :price
    remove_column :products, :quality
  end
end
