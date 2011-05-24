class Product < ActiveRecord::Migration
  def self.up
   create_table :products do |t|
    t.string "name"
    t.decimal "cost"
    t.string "users_id"
    t.integer "quantity"
    t.timestamps
   end
  end
  def self.down
    drop_table :products
  end
end
