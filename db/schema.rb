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

ActiveRecord::Schema.define(version: 20151008151221) do

  create_table "assignments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_statuses", force: :cascade do |t|
    t.string   "status"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.integer  "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "guardian"
    t.string   "father"
    t.string   "mother"
    t.string   "email"
    t.string   "address"
    t.integer  "phone"
    t.integer  "private_number"
    t.string   "county"
    t.string   "country"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "student_id"
    t.integer  "teacher_id"
  end

  add_index "contacts", ["student_id"], name: "index_contacts_on_student_id"
  add_index "contacts", ["teacher_id"], name: "index_contacts_on_teacher_id"

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.date     "reported_date"
    t.string   "details"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "student_id",    default: 1
  end

  add_index "disciplines", ["student_id"], name: "index_disciplines_on_student_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.string   "change"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "passmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "type"
    t.string   "transaction_id"
    t.string   "specify_other"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "amount"
    t.date     "payment_date"
    t.string   "paid_by"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "classroom_id", default: 1
  end

  add_index "streams", ["classroom_id"], name: "index_streams_on_classroom_id"

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "surname"
    t.string   "gender"
    t.date     "dob"
    t.string   "nationality"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "adm_no"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "surname"
    t.string   "gender"
    t.date     "dob"
    t.string   "status"
    t.string   "employer"
    t.date     "employment_date"
    t.string   "nationality"
    t.string   "employer_id"
    t.string   "education"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "years", force: :cascade do |t|
    t.date     "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
