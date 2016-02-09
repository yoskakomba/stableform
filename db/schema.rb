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

ActiveRecord::Schema.define(version: 20160209043410) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "clientname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
  end

  create_table "enrollment_areas", force: :cascade do |t|
    t.integer "area_id"
    t.integer "enrollment_id"
  end

  create_table "enrollment_conditions", force: :cascade do |t|
    t.integer "condition_id"
    t.integer "enrollment_id"
  end

  create_table "enrollment_preferences", force: :cascade do |t|
    t.integer "preference_id"
    t.integer "enrollment_id"
  end

  create_table "enrollment_references", force: :cascade do |t|
    t.integer "reference_id"
    t.integer "enrollment_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "dob"
    t.string   "address"
    t.string   "suburb"
    t.string   "occupation"
    t.integer  "telephone"
    t.integer  "post_code"
    t.text     "past_medical_history"
    t.text     "medication"
    t.text     "symptoms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
    t.string   "exercise"
  end

  create_table "preferences", force: :cascade do |t|
    t.string "name"
  end

  create_table "references", force: :cascade do |t|
    t.string "name"
  end

end
