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

ActiveRecord::Schema[7.0].define(version: 2023_05_25_070348) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_players", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "encounter_id", null: false
    t.integer "initiative", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_active_players_on_encounter_id"
    t.index ["player_id"], name: "index_active_players_on_player_id"
  end

  create_table "ai_texts", force: :cascade do |t|
    t.text "text"
    t.bigint "campaign_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_ai_texts_on_campaign_id"
  end

  create_table "ai_world_texts", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "world_name"
    t.string "world_biome"
    t.string "world_mood"
    t.string "world_weather"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.string "skill_type"
    t.boolean "success"
    t.boolean "criticality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.string "target"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.bigint "encounter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_enemies_on_encounter_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.string "character_name"
    t.string "character_class"
    t.bigint "campaign_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_enemy", default: false
    t.index ["campaign_id"], name: "index_players_on_campaign_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_players", "encounters"
  add_foreign_key "active_players", "players"
  add_foreign_key "ai_texts", "campaigns"
  add_foreign_key "campaigns", "users"
  add_foreign_key "encounters", "players"
  add_foreign_key "enemies", "encounters"
  add_foreign_key "players", "campaigns"
end
