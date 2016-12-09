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

ActiveRecord::Schema.define(version: 20161118195853) do

  create_table "appointment_treatments", force: :cascade do |t|
    t.integer  "tooth_treatment_id"
    t.integer  "appointment_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "date"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "postal_code"
    t.integer  "country_id"
    t.string   "phone"
    t.string   "email"
    t.date     "date_registred"
    t.integer  "employee_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_files", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "attachment"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "surname"
    t.integer  "gender_id"
    t.date     "birthday"
    t.string   "job_title"
    t.date     "hire_date"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "postal_code"
    t.integer  "country_id"
    t.string   "phone"
    t.string   "email"
    t.integer  "clinic_id"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_histories", force: :cascade do |t|
    t.integer  "employee_id"
    t.date     "end_date"
    t.string   "job_title"
    t.integer  "clinic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "cnp"
    t.string   "first_name"
    t.string   "surname"
    t.integer  "gender_id"
    t.date     "birthday"
    t.string   "insurance"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "postal_code"
    t.integer  "country_id"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "patient_id"
    t.integer  "appointment_treatment_id"
    t.integer  "stars"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sides", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tooth_treatments", force: :cascade do |t|
    t.integer  "tooth_id"
    t.integer  "treatment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tooths", force: :cascade do |t|
    t.integer  "side_id"
    t.string   "tooth_type"
    t.integer  "roots_number"
    t.integer  "canals_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
