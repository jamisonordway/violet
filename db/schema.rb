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

ActiveRecord::Schema.define(version: 2021_08_03_133228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "freewrites", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.index ["user_id"], name: "index_freewrites_on_user_id"
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

  create_table "progressions", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.text "content"
    t.index ["section_id"], name: "index_progressions_on_section_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "song_id"
    t.integer "label"
    t.string "type"
    t.text "lyrics"
    t.index ["song_id"], name: "index_sections_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "message"
    t.string "mood"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_songs_on_user_id"
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

  add_foreign_key "freewrites", "users"
  add_foreign_key "progressions", "sections"
  add_foreign_key "sections", "songs"
  add_foreign_key "songs", "users"
end
