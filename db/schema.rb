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

ActiveRecord::Schema.define(version: 2019_11_25_181021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalogs_departments", force: :cascade do |t|
    t.string "name_es"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "catalogs_locations", force: :cascade do |t|
    t.string "abbr"
    t.string "name_es"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "catalogs_member_types", force: :cascade do |t|
    t.string "name_es"
    t.string "name_en"
    t.string "gm_attrs", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rank"
  end

  create_table "catalogs_pub_types", force: :cascade do |t|
    t.string "name_es"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "catalogs_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_members", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "photo_file_name"
    t.string "email"
    t.string "phone_numbers"
    t.text "academic_career_es"
    t.text "academic_career_en"
    t.text "research_interests_es"
    t.text "research_interests_en"
    t.string "photo_res_file_name"
    t.string "photo_res_descr_es"
    t.string "photo_res_descr_en"
    t.bigint "catalogs_member_type_id", null: false
    t.bigint "catalogs_status_id", null: false
    t.string "current_position_es"
    t.string "current_position_en"
    t.string "current_workplace"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["catalogs_member_type_id"], name: "index_group_members_on_catalogs_member_type_id"
    t.index ["catalogs_status_id"], name: "index_group_members_on_catalogs_status_id"
    t.index ["group_id"], name: "index_group_members_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name_es"
    t.string "name_en"
    t.bigint "catalogs_location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "catalogs_department_id", default: 1, null: false
    t.index ["catalogs_department_id"], name: "index_groups_on_catalogs_department_id"
    t.index ["catalogs_location_id"], name: "index_groups_on_catalogs_location_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "name_es"
    t.string "name_en"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "member_links", force: :cascade do |t|
    t.bigint "group_member_id", null: false
    t.bigint "link_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_member_id"], name: "index_member_links_on_group_member_id"
    t.index ["link_id"], name: "index_member_links_on_link_id"
  end

  create_table "member_publications", force: :cascade do |t|
    t.bigint "group_member_id", null: false
    t.bigint "publication_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_member_id"], name: "index_member_publications_on_group_member_id"
    t.index ["publication_id"], name: "index_member_publications_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.text "title"
    t.string "link"
    t.bigint "catalogs_pub_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["catalogs_pub_type_id"], name: "index_publications_on_catalogs_pub_type_id"
  end

  add_foreign_key "group_members", "catalogs_member_types"
  add_foreign_key "group_members", "catalogs_statuses"
  add_foreign_key "group_members", "groups"
  add_foreign_key "groups", "catalogs_departments"
  add_foreign_key "groups", "catalogs_locations"
  add_foreign_key "member_links", "group_members"
  add_foreign_key "member_links", "links"
  add_foreign_key "member_publications", "group_members"
  add_foreign_key "member_publications", "publications"
  add_foreign_key "publications", "catalogs_pub_types"
end
