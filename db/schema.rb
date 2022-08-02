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

ActiveRecord::Schema[7.0].define(version: 2022_08_02_121512) do
  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "college_projects", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_college_projects_on_college_id"
    t.index ["project_id"], name: "index_college_projects_on_project_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commentable_type"
    t.integer "commentable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demos", force: :cascade do |t|
    t.string "d_name"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_demos_on_student_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employes", force: :cascade do |t|
    t.string "e_name"
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_employes_on_company_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manager_histories", force: :cascade do |t|
    t.integer "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_manager_histories_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "m_name"
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_managers_on_department_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "p_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "s_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools_teachers", id: false, force: :cascade do |t|
    t.integer "school_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "t_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "college_projects", "colleges"
  add_foreign_key "college_projects", "projects"
  add_foreign_key "demos", "students"
  add_foreign_key "employes", "companies"
  add_foreign_key "manager_histories", "managers"
  add_foreign_key "managers", "departments"
end
