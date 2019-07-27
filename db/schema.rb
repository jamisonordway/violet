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

ActiveRecord::Schema.define(version: 2019_06_15_135202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "freewrites", force: :cascade do |t|
    t.string "freewrite_title"
    t.string "freewrite_body"
  end

  create_table "leaderboards", force: :cascade do |t|
  end

  create_table "messages", force: :cascade do |t|
    t.string "message_body"
  end

  create_table "moods", force: :cascade do |t|
    t.string "mood_label"
    t.string "mood_description"
  end

  create_table "motifs", force: :cascade do |t|
  end

  create_table "points", force: :cascade do |t|
    t.integer "score"
  end

  create_table "profiles", force: :cascade do |t|
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "sections", force: :cascade do |t|
    t.string "section_label"
    t.string "section_body"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "lyrics"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "password_confirm"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
