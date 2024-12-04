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

<<<<<<< HEAD
ActiveRecord::Schema[7.1].define(version: 2024_12_04_061824) do
  create_table "budgets", force: :cascade do |t|
    t.date "start_time"
    t.integer "expend"
=======
ActiveRecord::Schema[7.1].define(version: 2024_12_04_071335) do
  create_table "budgets", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
>>>>>>> 48f3f61785e179abcfc27af5aa5e1808365c9d02
    t.integer "income"
    t.integer "expend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "password_digest"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
