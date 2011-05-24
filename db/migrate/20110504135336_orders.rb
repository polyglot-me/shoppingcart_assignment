class Order < ActiveRecord::Migration
  def self.up
 create_table :orders do |t|
  t.string "address"
  t.string "city"
  t.string "users_id"
  t.timestamps
   end
  end
  def self.down
  drop_table :orders
  end
end
