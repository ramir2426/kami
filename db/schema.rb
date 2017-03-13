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

ActiveRecord::Schema.define(version: 20170311195541) do

  create_table "riders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "gender"
    t.integer  "age"
    t.string   "qualification"
    t.string   "work_experience"
    t.string   "ice_number"
    t.string   "cnic"
    t.string   "driving_license"
    t.string   "reg_copy"
    t.string   "cv"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "salesmen", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "gender"
    t.integer  "age"
    t.string   "qualification"
    t.string   "work_experience"
    t.string   "cv"
    t.integer  "job_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end