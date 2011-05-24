# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110524060921) do

  create_table "admins", :force => true do |t|
  end

  create_table "order_items", :force => true do |t|
    t.integer "orders_id"
    t.integer "quantity"
    t.decimal "price",     :precision => 10, :scale => 0
  end

  create_table "orders", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "cost",            :precision => 10, :scale => 0
    t.string   "users_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock"
    t.integer  "shoppingcart_id"
    t.integer  "shopingcart_id"
  end

  create_table "products_orders", :force => true do |t|
    t.integer "products_id"
    t.string  "orders_id"
  end

  create_table "shoppingcartitems", :force => true do |t|
    t.integer  "shoppingcart id"
    t.integer  "quantity"
    t.decimal  "price",           :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppingcarts", :force => true do |t|
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.integer  "contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
