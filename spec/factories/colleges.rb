FactoryBot.define do
  factory :college do
    school_name { "Example University" }
    state { "CA" }
    city { "Los Angeles" }
    proximity_to_beach { 5 }
    marine_biology_program_quality { "Excellent" }
    total_cost_in_state { 20000 }
    total_cost_out_state { 40000 }
    financial_aid_percentage { 0.75 }
    average_financial_aid { 15000 }
    freshmen_class_size { 1000 }
    freshmen_living_on_campus_percentage { 0.80 }
    on_campus_living_requirement { true }
    student_to_faculty_ratio { 15.0 }
    acceptance_rate { 0.25 }
    graduation_rate_4yr { 0.70 }
    graduation_rate_6yr { 0.85 }
    retention_rate { 0.90 }
    diversity_percentage { 0.40 }
    average_class_size { 30 }
    popular_majors { "Marine Biology, Computer Science" }
    extracurricular_activities { "Clubs, Organizations" }
    sports_programs { "Basketball, Soccer" }
    study_abroad_opportunities { true }
    internship_opportunities { true }
    campus_safety { "Very Safe" }
    campus_facilities { "Library, Labs" }
    known_for { "Research, Diversity" }
    social_scene { "Active" }
    commuter_residential_ratio { 0.70 }
    nearby_attractions { "Beach, Parks" }
    job_placement_rate { 0.85 }
    alumni_network_strength { 0.90 }
    climate { "Warm" }
  end
end
