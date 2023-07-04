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

ActiveRecord::Schema.define(version: 2023_07_01_073508) do

  create_table "areas", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_blessings", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "power_spot_id", null: false
    t.text "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["power_spot_id"], name: "index_comments_on_power_spot_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "elements", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.text "descript", null: false
    t.text "kami", null: false
    t.text "personal", null: false
    t.text "match_attr", null: false
    t.text "better_job", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "power_spots", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.text "descript", null: false
    t.string "image1", null: false
    t.string "image2"
    t.string "image3"
    t.bigint "attribute_id", null: false
    t.bigint "category_blessing_id", null: false
    t.bigint "prefecture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attribute_id"], name: "index_power_spots_on_attribute_id"
    t.index ["category_blessing_id"], name: "index_power_spots_on_category_blessing_id"
    t.index ["prefecture_id"], name: "index_power_spots_on_prefecture_id"
  end

  create_table "prefectures", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_prefectures_on_area_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", null: false
    t.string "birthday", null: false
    t.string "blood_type", null: false
    t.text "profile"
    t.string "avatar", null: false
    t.bigint "prefecture_id", null: false
    t.bigint "element_id"
    t.index ["element_id"], name: "index_users_on_element_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["prefecture_id"], name: "index_users_on_prefecture_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "power_spots"
  add_foreign_key "comments", "users"
  add_foreign_key "power_spots", "category_blessings"
  add_foreign_key "power_spots", "elements", column: "attribute_id"
  add_foreign_key "power_spots", "prefectures"
  add_foreign_key "prefectures", "areas"
  add_foreign_key "users", "elements"
  add_foreign_key "users", "prefectures"
end
