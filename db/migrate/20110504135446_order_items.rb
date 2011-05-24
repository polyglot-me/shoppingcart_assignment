class OrderItem < ActiveRecord::Migration
  def self.up
  create_table :order_items do |t|
  t.integer "orders_id"
  t.integer "quantity"
  t.decimal "price"
    end
    end

  def self.down
    drop_table :order_items
  end
end
