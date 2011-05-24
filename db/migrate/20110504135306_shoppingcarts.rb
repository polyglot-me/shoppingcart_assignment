class Shoppingcart < ActiveRecord::Migration
  def self.up
  create_table :shoppingcarts do |t|
  t.integer "user_id"
    end
  end
  def self.down
    drop_table :shopingcarts
  end
  def create_cart

  end
end
