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

ActiveRecord::Schema.define(version: 20161006100230) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "text",               limit: 65535
    t.string   "author",             limit: 255
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "career_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "jobs_count", limit: 4
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "tagline",            limit: 255
    t.string   "phone",              limit: 255
    t.string   "email",              limit: 255
    t.text     "about",              limit: 65535
    t.text     "story",              limit: 65535
    t.text     "welfare",            limit: 65535
    t.text     "demand",             limit: 65535
    t.text     "idea",               limit: 65535
    t.string   "website",            limit: 255
    t.string   "facebook",           limit: 255
    t.string   "twitter",            limit: 255
    t.string   "ios",                limit: 255
    t.string   "android",            limit: 255
    t.boolean  "is_hiring"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
    t.integer  "jobs_count",         limit: 4
    t.integer  "views_count",        limit: 4
    t.integer  "industry_id",        limit: 4
    t.integer  "employee_range_id",  limit: 4
    t.integer  "country_id",         limit: 4
    t.integer  "location_id",        limit: 4
    t.integer  "user_id",            limit: 4
    t.string   "address1",           limit: 255
    t.string   "address2",           limit: 255
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.string   "message",    limit: 255
    t.boolean  "is_read",                default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "contract_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "jobs_count", limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cover_letters", force: :cascade do |t|
    t.integer  "resume_id",   limit: 4
    t.integer  "job_id",      limit: 4
    t.string   "description", limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "is_read",                 default: false
  end

  create_table "degree_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "desired_jobs_industries", force: :cascade do |t|
    t.integer  "industry_id", limit: 4
    t.integer  "resume_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "desired_jobs_roles", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.integer  "resume_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "desired_jobs_salaries", force: :cascade do |t|
    t.integer  "salary",     limit: 4
    t.integer  "resume_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "employee_ranges", force: :cascade do |t|
    t.string   "range",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employment_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "job_title",        limit: 255
    t.string   "company_name",     limit: 255
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "country_id",       limit: 4
    t.integer  "industry_id",      limit: 4
    t.integer  "contract_type_id", limit: 4
    t.string   "activities",       limit: 255
    t.integer  "resume_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type", limit: 255
    t.integer  "impressionable_id",   limit: 4
    t.integer  "user_id",             limit: 4
    t.string   "controller_name",     limit: 255
    t.string   "action_name",         limit: 255
    t.string   "view_name",           limit: 255
    t.string   "request_hash",        limit: 255
    t.string   "ip_address",          limit: 255
    t.string   "session_hash",        limit: 255
    t.text     "message",             limit: 65535
    t.text     "referrer",            limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index", using: :btree
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index", using: :btree
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index", using: :btree
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index", length: {"impressionable_type"=>nil, "message"=>255, "impressionable_id"=>nil}, using: :btree
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id", using: :btree

  create_table "industries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "jobs_count", limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "status",              limit: 255
    t.text     "description",         limit: 65535
    t.text     "requirement",         limit: 65535
    t.text     "apply_instruction",   limit: 65535
    t.date     "start_day"
    t.integer  "views_count",         limit: 4,     default: 0
    t.integer  "applied_count",       limit: 4,     default: 0
    t.text     "professional_skill",  limit: 65535
    t.boolean  "is_published",                      default: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "category_id",         limit: 4
    t.integer  "industry_id",         limit: 4
    t.integer  "contract_type_id",    limit: 4
    t.integer  "location_id",         limit: 4
    t.integer  "salary_range_id",     limit: 4
    t.integer  "company_id",          limit: 4
    t.integer  "country_id",          limit: 4
    t.text     "language_skills",     limit: 65535
    t.integer  "cover_letters_count", limit: 4,     default: 0
  end

  create_table "language_skills", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "languages", force: :cascade do |t|
    t.integer  "language_skill_id",      limit: 4
    t.integer  "proficiency_id",         limit: 4
    t.integer  "resume_id",              limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "preferred_candidate_id", limit: 4
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "jobs_count", limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "preferred_candidates", force: :cascade do |t|
    t.integer  "job_id",                limit: 4
    t.integer  "location_id",           limit: 4
    t.integer  "country_id",            limit: 4
    t.integer  "language_id",           limit: 4
    t.integer  "contract_type_id",      limit: 4
    t.integer  "category_id",           limit: 4
    t.integer  "career_level_id",       limit: 4
    t.integer  "degree_level_id",       limit: 4
    t.integer  "related_experience_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "proficiencies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "related_experiences", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reserved_companies", force: :cascade do |t|
    t.integer  "following_user_id",   limit: 4
    t.integer  "favorite_company_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "reserved_jobs", force: :cascade do |t|
    t.integer  "tracking_user_id", limit: 4
    t.integer  "favorite_job_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "reserved_resumes", force: :cascade do |t|
    t.integer  "tracking_company_id", limit: 4
    t.integer  "favorite_resume_id",  limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "firstname",            limit: 255
    t.string   "lastname",             limit: 255
    t.string   "phone",                limit: 255
    t.integer  "location_id",          limit: 4
    t.integer  "user_id",              limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "cover_file_name",      limit: 255
    t.string   "cover_content_type",   limit: 255
    t.integer  "cover_file_size",      limit: 4
    t.datetime "cover_updated_at"
    t.date     "birth"
    t.integer  "employment_status_id", limit: 4
    t.integer  "experience_count",     limit: 4,   default: 0
  end

  add_index "resumes", ["location_id"], name: "index_resumes_on_location_id", using: :btree
  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "salary_ranges", force: :cascade do |t|
    t.string   "range",      limit: 255
    t.integer  "jobs_count", limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "schools", force: :cascade do |t|
    t.integer  "university_id",   limit: 4
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "degree_level_id", limit: 4
    t.string   "field_of_study",  limit: 255
    t.string   "grade",           limit: 255
    t.integer  "resume_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "resume_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
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
    t.integer  "company_id",             limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "resumes", "locations"
  add_foreign_key "resumes", "users"
end
