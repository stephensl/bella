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

ActiveRecord::Schema[7.1].define(version: 2024_07_11_000712) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colleges", force: :cascade do |t|
    t.string "school_name"
    t.string "state"
    t.string "city"
    t.integer "proximity_to_beach"
    t.string "marine_biology_program_quality"
    t.integer "total_cost_in_state"
    t.integer "total_cost_out_state"
    t.decimal "financial_aid_percentage"
    t.integer "average_financial_aid"
    t.integer "freshmen_class_size"
    t.decimal "freshmen_living_on_campus_percentage"
    t.boolean "on_campus_living_requirement"
    t.decimal "student_to_faculty_ratio"
    t.decimal "acceptance_rate"
    t.decimal "graduation_rate_4yr"
    t.decimal "graduation_rate_6yr"
    t.decimal "retention_rate"
    t.decimal "diversity_percentage"
    t.integer "average_class_size"
    t.string "popular_majors"
    t.text "extracurricular_activities"
    t.text "sports_programs"
    t.boolean "study_abroad_opportunities"
    t.boolean "internship_opportunities"
    t.string "campus_safety"
    t.text "campus_facilities"
    t.text "known_for"
    t.text "social_scene"
    t.decimal "commuter_residential_ratio"
    t.text "nearby_attractions"
    t.decimal "job_placement_rate"
    t.decimal "alumni_network_strength"
    t.text "climate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
