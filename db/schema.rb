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

ActiveRecord::Schema[7.1].define(version: 2024_06_29_070349) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Champions", force: :cascade do |t|
    t.string "Champ_name", null: false
    t.string "Champ_title", null: false
    t.string "Resource_type", null: false
    t.integer "Price", null: false
    t.integer "Champ_stat_id"
    t.integer "Champ_ms", null: false
    t.integer "Champ_attack_range", null: false
    t.integer "Champ_AS_id"
    t.integer "Champ_Ability_Kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "abilities", force: :cascade do |t|
    t.string "Ability_name", null: false
    t.integer "Resource_cost", null: false
    t.string "Description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_kits", force: :cascade do |t|
    t.integer "Champ_id", null: false
    t.integer "Ability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "attack_speeds", force: :cascade do |t|
    t.float "Base_attack_speed", null: false
    t.float "Attack_windup", null: false
    t.float "Attack_speed_ratio", null: false
    t.float "Bonus_attack_speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "Level", null: false
    t.integer "Health", null: false
    t.integer "Health_growth", null: false
    t.integer "Health_regen", null: false
    t.integer "Health_regen_growth", null: false
    t.integer "Resource", null: false
    t.integer "Resource_growth", null: false
    t.integer "Resource_regen", null: false
    t.integer "Resource_regen_growth", null: false
    t.integer "Armor", null: false
    t.integer "Armor_growth", null: false
    t.integer "MS", null: false
    t.integer "MS_growth", null: false
    t.integer "AD", null: false
    t.integer "AD_growth", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
