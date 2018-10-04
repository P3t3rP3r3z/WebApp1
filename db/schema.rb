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

ActiveRecord::Schema.define(version: 20181004202739) do

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "department"
    t.integer "course_id"
    t.integer "credit_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "semster"
    t.integer "section"
    t.integer "course_id"
    t.integer "room_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.integer "student_id"
    t.string "student_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
