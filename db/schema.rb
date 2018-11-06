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

ActiveRecord::Schema.define(version: 2018_11_06_010015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boardgames", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.string "rating", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boardgames_events", force: :cascade do |t|
    t.bigint "boardgame_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_boardgames_events_on_boardgame_id"
    t.index ["event_id"], name: "index_boardgames_events_on_event_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body", null: false
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.bigint "location_id"
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organizer_id", null: false
    t.datetime "eventdate"
    t.index ["group_id"], name: "index_events_on_group_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "events_users", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "user_id"
    t.index ["event_id"], name: "index_events_users_on_event_id"
    t.index ["user_id"], name: "index_events_users_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "boardgame_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_favorites_on_boardgame_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "body", null: false
    t.integer "rating", null: false
    t.bigint "boardgame_id"
    t.bigint "event_id"
    t.bigint "group_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_reviews_on_boardgame_id"
    t.index ["event_id"], name: "index_reviews_on_event_id"
    t.index ["group_id"], name: "index_reviews_on_group_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "win", null: false
    t.integer "lose", null: false
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.bigint "boardgame_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boardgame_id"], name: "index_scores_on_boardgame_id"
    t.index ["event_id"], name: "index_scores_on_event_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_photo"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
