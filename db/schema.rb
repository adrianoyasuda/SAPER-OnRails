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

ActiveRecord::Schema.define(version: 2021_06_22_112340) do

  create_table "answers", force: :cascade do |t|
    t.string "description"
    t.integer "points"
    t.integer "question_id", null: false
    t.integer "user_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_points", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "point"
    t.integer "user_id", null: false
    t.integer "extra"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["extra"], name: "index_question_points_on_extra", unique: true
    t.index ["question_id"], name: "index_question_points_on_question_id"
    t.index ["user_id"], name: "index_question_points_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.text "description"
    t.integer "points", default: 0
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_questions_on_course_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "questions_tags", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "tag_id", null: false
    t.index ["question_id"], name: "index_questions_tags_on_question_id"
    t.index ["tag_id"], name: "index_questions_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "question_points", "questions"
  add_foreign_key "question_points", "users"
  add_foreign_key "questions", "courses"
  add_foreign_key "questions", "users"
  add_foreign_key "questions_tags", "questions"
  add_foreign_key "questions_tags", "tags"
end
