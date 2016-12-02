# encoding: UTF-8
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


ActiveRecord::Schema.define(version: 20161121202632) do


  create_table "activity_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admin_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "region_id",              limit: 4
    t.integer  "admin_type_id",          limit: 4
    t.integer  "seremi_zone_id",         limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "asociative_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "rut",                    limit: 255
    t.string   "address",                limit: 255
    t.string   "village",                limit: 255
    t.string   "mobile",                 limit: 255
    t.string   "landline",               limit: 255
    t.integer  "region_id",              limit: 4
    t.integer  "province_id",            limit: 4
    t.integer  "commune_id",             limit: 4
    t.date     "date_foundation"
    t.integer  "partners_number",        limit: 4
  end

  add_index "asociative_users", ["email"], name: "index_asociative_users_on_email", unique: true, using: :btree
  add_index "asociative_users", ["reset_password_token"], name: "index_asociative_users_on_reset_password_token", unique: true, using: :btree

  create_table "beneficiaries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "rut",        limit: 255
    t.string   "address",    limit: 255
    t.integer  "age",        limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "benefit_requesteds", force: :cascade do |t|
    t.integer  "benefit_type_id",      limit: 4
    t.integer  "estimated_investment", limit: 4
    t.text     "comments",             limit: 65535
    t.integer  "user_id",              limit: 4
    t.integer  "asociative_user_id",   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "benefit_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "characterization_works", force: :cascade do |t|
    t.string   "work_name",                              limit: 255
    t.string   "localization",                           limit: 255
    t.string   "sector",                                 limit: 255
    t.string   "mountain_range",                         limit: 255
    t.integer  "region_id",                              limit: 4
    t.integer  "province_id",                            limit: 4
    t.integer  "commune_id",                             limit: 4
    t.integer  "utm_north_coordinate",                   limit: 4
    t.integer  "utm_east_coordinate",                    limit: 4
    t.string   "buyer_power",                            limit: 255
    t.integer  "distance",                               limit: 4
    t.string   "mining_district",                        limit: 255
    t.integer  "number_workers",                         limit: 4
    t.integer  "owner_type_id",                          limit: 4
    t.integer  "mining_properties_constitution_type_id", limit: 4
    t.integer  "operation_type_id",                      limit: 4
    t.integer  "extracted_mineral_type_id",              limit: 4
    t.integer  "mining_information_available_type_id",   limit: 4
    t.boolean  "drill"
    t.boolean  "winch"
    t.boolean  "compressor"
    t.boolean  "electric_generator"
    t.boolean  "wagon"
    t.integer  "user_id",                                limit: 4
    t.integer  "asociative_user_id",                     limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "civil_status_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "province_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "extracted_mineral_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "family_groups", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.integer  "age",                  limit: 4
    t.integer  "relationship_type_id", limit: 4
    t.string   "activity",             limit: 255
    t.integer  "scholarship_type_id",  limit: 4
    t.integer  "user_id",              limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "gender_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "mining_information_available_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "mining_properties_constitution_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "operation_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "owner_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pamma_participations", force: :cascade do |t|
    t.boolean  "previous_beneficiary"
    t.integer  "number_times",          limit: 4
    t.integer  "benefit_type_id",       limit: 4
    t.integer  "project_state_type_id", limit: 4
    t.integer  "support_type_id",       limit: 4
    t.integer  "user_id",               limit: 4
    t.integer  "asociative_user_id",    limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "personal_backgrounds", force: :cascade do |t|
    t.integer  "scholarship_type_id",          limit: 4
    t.integer  "retirement_system_type_id",    limit: 4
    t.integer  "activity_type_id",             limit: 4
    t.integer  "training_type_id",             limit: 4
    t.integer  "social_record_status_type_id", limit: 4
    t.integer  "score",                        limit: 4
    t.date     "last_poll"
    t.integer  "user_id",                      limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "postulation_date_postulation_standards", force: :cascade do |t|
    t.integer  "postulation_date_id",     limit: 4
    t.integer  "postulation_standard_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "postulation_dates", force: :cascade do |t|
    t.string   "name",                    limit: 255
    t.date     "date_begin"
    t.date     "date_end"
    t.string   "user_type",               limit: 255
    t.integer  "postulation_standard_id", limit: 4
    t.boolean  "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "postulation_standards", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "weighing",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "postulation_states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "postulations", force: :cascade do |t|
    t.integer  "user_id",                  limit: 4
    t.integer  "asociative_user_id",       limit: 4
    t.integer  "personal_backgrounds_id",  limit: 4
    t.integer  "family_group_id",          limit: 4
    t.integer  "pamma_participation_id",   limit: 4
    t.integer  "beneficiary_id",           limit: 4
    t.integer  "characterization_work_id", limit: 4
    t.integer  "benefit_requested_id",     limit: 4
    t.integer  "representative_id",        limit: 4
    t.integer  "postulation_date_id",      limit: 4
    t.integer  "postulation_state_id",     limit: 4
    t.string   "milestone_name",           limit: 255
    t.text     "milestone_description",    limit: 65535
    t.date     "milestone_date_begin"
    t.date     "milestone_date_end"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "project_state_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "region_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "representatives", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "last_name",          limit: 255
    t.string   "surname",            limit: 255
    t.string   "rut",                limit: 255
    t.integer  "gender_id",          limit: 4
    t.string   "address",            limit: 255
    t.string   "village",            limit: 255
    t.integer  "region_id",          limit: 4
    t.integer  "province_id",        limit: 4
    t.integer  "commune_id",         limit: 4
    t.string   "mobile",             limit: 255
    t.string   "landline",           limit: 255
    t.integer  "asociative_user_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "retirement_system_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "scholarship_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seremi_zones", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "region_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "social_record_status_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "support_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "training_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "minning_society_name",   limit: 255
    t.string   "minning_society_rut",    limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "surname",                limit: 255
    t.string   "rut",                    limit: 255
    t.date     "birthdate"
    t.integer  "gender_id",              limit: 4
    t.integer  "civil_status_id",        limit: 4
    t.string   "address",                limit: 255
    t.string   "village",                limit: 255
    t.string   "mobile",                 limit: 255
    t.string   "landline",               limit: 255
    t.integer  "region_id",              limit: 4
    t.integer  "province_id",            limit: 4
    t.integer  "commune_id",             limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
