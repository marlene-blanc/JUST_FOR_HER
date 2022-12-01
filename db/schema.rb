# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_30_152450) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donated_products", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "donation_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donation_id"], name: "index_donated_products_on_donation_id"
    t.index ["product_id"], name: "index_donated_products_on_product_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "warehouse_id"
    t.integer "amount"
    t.boolean "confirm", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_donations_on_user_id"
    t.index ["warehouse_id"], name: "index_donations_on_warehouse_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "max_quantity"
    t.integer "actual_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  add_foreign_key "donated_products", "donations"
  add_foreign_key "donated_products", "products"
  add_foreign_key "donations", "users"
  add_foreign_key "donations", "warehouses"
end