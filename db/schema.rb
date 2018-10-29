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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_29_052700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.text "location"
    t.text "preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lat", precision: 10, scale: 8
    t.decimal "long", precision: 10, scale: 8
    t.bigint "usercust_id"
    t.text "image_url"
    t.index ["usercust_id"], name: "index_customers_on_usercust_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.text "item"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "orders_menu_items", id: false, force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "menu_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_orders_menu_items_on_menu_item_id"
    t.index ["order_id"], name: "index_orders_menu_items_on_order_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "customer_id"
    t.datetime "reservation_date"
    t.datetime "reservation_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "category"
    t.decimal "lat", precision: 10, scale: 8
    t.decimal "long", precision: 10, scale: 8
    t.bigint "userrest_id"
    t.text "image_url"
    t.text "image2_url"
    t.text "image3_url"
    t.index ["userrest_id"], name: "index_restaurants_on_userrest_id"
  end

  create_table "usercusts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "usercust"
    t.index ["email"], name: "index_usercusts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usercusts_on_reset_password_token", unique: true
  end

  create_table "userrests", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "userrest"
    t.index ["email"], name: "index_userrests_on_email", unique: true
    t.index ["reset_password_token"], name: "index_userrests_on_reset_password_token", unique: true
  end

  add_foreign_key "customers", "usercusts"
  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "restaurants", "userrests"
end
