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

ActiveRecord::Schema.define(version: 2018_12_14_067070) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_units", force: :cascade do |t|
    t.string "name"
    t.bigint "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_business_units_on_entity_id"
  end

  create_table "chart_of_accounts", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_chart_of_accounts_on_product_id"
  end

  create_table "cost_centers", force: :cascade do |t|
    t.string "name"
    t.bigint "business_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_unit_id"], name: "index_cost_centers_on_business_unit_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_entities_on_country_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "product_id"
    t.string "item_name"
    t.string "vendor"
    t.bigint "chart_of_account_id"
    t.string "unit"
    t.string "total"
    t.string "vat"
    t.string "est_unit_price"
    t.string "est_total_price"
    t.string "attachment"
    t.bigint "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chart_of_account_id"], name: "index_items_on_chart_of_account_id"
    t.index ["product_id"], name: "index_items_on_product_id"
    t.index ["request_id"], name: "index_items_on_request_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "sub_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "number"
    t.date "date_needed"
    t.datetime "date_submitted"
    t.string "reason_to_procure"
    t.string "grand_total"
    t.bigint "country_id"
    t.bigint "entity_id"
    t.bigint "business_unit_id"
    t.bigint "cost_center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_unit_id"], name: "index_requests_on_business_unit_id"
    t.index ["cost_center_id"], name: "index_requests_on_cost_center_id"
    t.index ["country_id"], name: "index_requests_on_country_id"
    t.index ["entity_id"], name: "index_requests_on_entity_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackings", force: :cascade do |t|
    t.datetime "date_change"
    t.bigint "user_id"
    t.bigint "status_id"
    t.bigint "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_trackings_on_request_id"
    t.index ["status_id"], name: "index_trackings_on_status_id"
    t.index ["user_id"], name: "index_trackings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "business_units", "entities"
  add_foreign_key "chart_of_accounts", "products"
  add_foreign_key "cost_centers", "business_units"
  add_foreign_key "entities", "countries"
  add_foreign_key "items", "chart_of_accounts"
  add_foreign_key "items", "products"
  add_foreign_key "items", "requests"
  add_foreign_key "requests", "business_units"
  add_foreign_key "requests", "cost_centers"
  add_foreign_key "requests", "countries"
  add_foreign_key "requests", "entities"
  add_foreign_key "trackings", "requests"
  add_foreign_key "trackings", "statuses"
  add_foreign_key "trackings", "users"
end
