class AddShoppingcartIdToProducts < ActiveRecord::Migration
  def self.up
  add_column "products", "shopingcart_id", :integer
  end

  def self.down
  end
end
