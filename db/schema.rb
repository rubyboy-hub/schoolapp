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

ActiveRecord::Schema.define(version: 2021_05_12_133831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "from"
    t.bigint "to"
    t.text "comment_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marks", force: :cascade do |t|
    t.bigint "stud_id"
    t.bigint "sub_id"
    t.bigint "mark"
    t.bigint "term_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["term_id"], name: "index_marks_on_term_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "standards", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_comments", force: :cascade do |t|
    t.bigint "replied_by"
    t.text "reply_comment"
    t.bigint "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_sub_comments_on_comment_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teacher_in_charges", force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "standard_id", null: false
    t.bigint "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["standard_id"], name: "index_teacher_in_charges_on_standard_id"
    t.index ["subject_id"], name: "index_teacher_in_charges_on_subject_id"
  end

  create_table "terms", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "parent_id"
    t.text "name"
    t.text "gender"
    t.text "address"
    t.bigint "age"
    t.bigint "relationships_id"
    t.bigint "class_teach_id"
    t.bigint "roles_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["relationships_id"], name: "index_users_on_relationships_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["roles_id"], name: "index_users_on_roles_id"
  end

  add_foreign_key "comments", "users", column: "from"
  add_foreign_key "comments", "users", column: "to"
  add_foreign_key "marks", "terms"
  add_foreign_key "sub_comments", "comments"
  add_foreign_key "teacher_in_charges", "standards"
  add_foreign_key "teacher_in_charges", "subjects"
  add_foreign_key "users", "roles", column: "roles_id"
  add_foreign_key "users", "users", column: "class_teach_id"
  add_foreign_key "users", "users", column: "parent_id"
end
