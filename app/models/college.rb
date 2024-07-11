class College < ApplicationRecord
  # Validations for presence
  validates :school_name, :state, :city, :total_cost_in_state, :total_cost_out_state, :financial_aid_percentage, :freshmen_class_size, :freshmen_living_on_campus_percentage, :on_campus_living_requirement, :student_to_faculty_ratio, :acceptance_rate, :graduation_rate_4yr, :graduation_rate_6yr, :retention_rate, :diversity_percentage, :average_class_size, presence: true

  # Validations for numericality
  validates :proximity_to_beach, numericality: { only_integer: true }, allow_nil: true
  validates :total_cost_in_state, :total_cost_out_state, :freshmen_class_size, :average_financial_aid, :average_class_size, numericality: { only_integer: true }
  validates :financial_aid_percentage, :freshmen_living_on_campus_percentage, :student_to_faculty_ratio, :acceptance_rate, :graduation_rate_4yr, :graduation_rate_6yr, :retention_rate, :diversity_percentage, :commuter_residential_ratio, :job_placement_rate, :alumni_network_strength, numericality: true

  # Boolean validations
  validates :on_campus_living_requirement, :study_abroad_opportunities, :internship_opportunities, inclusion: { in: [true, false] }

  # Length validations (optional, for text fields)
  validates :marine_biology_program_quality, :popular_majors, :campus_safety, length: { maximum: 255 }, allow_nil: true
  validates :extracurricular_activities, :sports_programs, :campus_facilities, :known_for, :social_scene, :nearby_attractions, :climate, length: { maximum: 1000 }, allow_nil: true

  # Custom validation methods (if needed)
  validate :validate_proximity_to_beach

  private

  def validate_proximity_to_beach
    if proximity_to_beach.present? && proximity_to_beach < 0
      errors.add(:proximity_to_beach, "must be a non-negative integer")
    end
  end
end
