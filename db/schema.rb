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

ActiveRecord::Schema.define(version: 20191112045033) do

  create_table "credit_cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "card_number", null: false
    t.integer "expiration_date_m", null: false
    t.integer "expiration_date_y", null: false
    t.integer "security_code", null: false
    t.integer "card_company", null: false
  end

  create_table "personal_informations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_k", null: false
    t.string "first_name_k", null: false
    t.integer "prefecture"
    t.string "municipalities"
    t.string "address"
    t.string "building"
    t.integer "birthday"
    t.integer "user_id", null: false
    t.integer "tel"
    t.index ["user_id"], name: "index_personal_informations_on_user_id"
  end

  create_table "products", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "detail"
    t.integer "shipping_fee"
    t.integer "expected_date"
    t.integer "price", null: false
    t.integer "like_count", default: 0
    t.string "status", null: false
    t.string "size"
    t.integer "transaction_status", default: 0, null: false
    t.integer "purchaser_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name"
    t.index ["price"], name: "index_products_on_price"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "personal_informations", "users"
  add_foreign_key "products", "users"
end
