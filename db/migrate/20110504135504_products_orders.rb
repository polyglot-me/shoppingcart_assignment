class ProductOrder < ActiveRecord::Migration
  def self.up
create_table :products_orders do|t|
  t.integer "products_id"
  t.string"orders_id"
end
    end

  def self.down
    drop_table :produicts_orders
  end
end
