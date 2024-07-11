class CreateColleges < ActiveRecord::Migration[7.1]
  def change
    create_table :colleges do |t|
      t.string :school_name
      t.string :state
      t.string :city
      t.integer :proximity_to_beach
      t.string :marine_biology_program_quality
      t.integer :total_cost_in_state
      t.integer :total_cost_out_state
      t.decimal :financial_aid_percentage
      t.integer :average_financial_aid
      t.integer :freshmen_class_size
      t.decimal :freshmen_living_on_campus_percentage
      t.boolean :on_campus_living_requirement
      t.decimal :student_to_faculty_ratio
      t.decimal :acceptance_rate
      t.decimal :graduation_rate_4yr
      t.decimal :graduation_rate_6yr
      t.decimal :retention_rate
      t.decimal :diversity_percentage
      t.integer :average_class_size
      t.string :popular_majors
      t.text :extracurricular_activities
      t.text :sports_programs
      t.boolean :study_abroad_opportunities
      t.boolean :internship_opportunities
      t.string :campus_safety
      t.text :campus_facilities
      t.text :known_for
      t.text :social_scene
      t.decimal :commuter_residential_ratio
      t.text :nearby_attractions
      t.decimal :job_placement_rate
      t.decimal :alumni_network_strength
      t.text :climate

      t.timestamps
    end
  end
end
