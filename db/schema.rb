# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_19_013905) do

  create_table "albums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "source"
    t.boolean "public", default: true
    t.bigint "user_id"
    t.index ["user_id"], name: "fk_rails_964016e0e8"
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "publishDate"
    t.boolean "public", default: true
    t.bigint "user_id"
    t.index ["user_id"], name: "fk_rails_c79d76afc0"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "first_name", limit: 30
    t.string "last_name", limit: 30
    t.string "email"
    t.string "password", limit: 30
    t.boolean "admin", default: false
  end

  add_foreign_key "albums", "users"
  add_foreign_key "photos", "users"
end
