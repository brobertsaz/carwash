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

ActiveRecord::Schema.define(version: 20170519002810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sales_transactions", force: :cascade do |t|
    t.decimal "total_amount"
    t.integer "wash_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_washes", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "wash_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "license_plate"
    t.boolean "tailgate_up"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "washes", force: :cascade do |t|
    t.decimal "base_fee", precision: 8, scale: 2
    t.boolean "muddy_bed"
    t.integer "transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
