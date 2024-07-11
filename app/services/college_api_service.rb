# app/services/college_api_service.rb
class CollegeApiService
  BASE_URL = 'https://api.data.gov/ed/collegescorecard/v1/schools'

  def initialize(api_key)
    @api_key = api_key
  end

  def fetch_colleges
    uri = URI(BASE_URL)
    params = {
      api_key: @api_key,
      fields: 'school.name,school.state,school.city,latest.cost.tuition.in_state,latest.cost.tuition.out_of_state,latest.admissions.admission_rate.overall,latest.student.size,latest.student.demographics.freshmen,latest.student.demographics.freshmen_on_campus,latest.completion.completion_rate_4yr_150nt,latest.completion.completion_rate_6yr_150nt,school.zip,school.lat,school.lon,school.campus.housing,latest.student.demographics.percent_minority,latest.student.size,latest.academics.program_percentage.marine_biology,latest.aid.pct_federal_loan_receipt,latest.student.retention_rate,latest.academics.program_percentage.marine_biology',
      per_page: 100
    }
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get_response(uri)
    if response.is_a?(Net::HTTPSuccess)
      JSON.parse(response.body)['results']
    else
      []
    end
  end

  def save_colleges
    colleges = fetch_colleges
    colleges.each do |college_data|
      College.create(
        school_name: college_data['school.name'],
        state: college_data['school.state'],
        city: college_data['school.city'],
        proximity_to_beach: calculate_proximity_to_beach(college_data['school.lat'], college_data['school.lon']),
        marine_biology_program_quality: college_data['latest.academics.program_percentage.marine_biology'],
        total_cost_in_state: college_data['latest.cost.tuition.in_state'],
        total_cost_out_state: college_data['latest.cost.tuition.out_of_state'],
        financial_aid_percentage: college_data['latest.aid.pct_federal_loan_receipt'],
        average_financial_aid: college_data['latest.student.demographics.percent_minority'],
        freshmen_class_size: college_data['latest.student.demographics.freshmen'],
        freshmen_living_on_campus_percentage: college_data['latest.student.demographics.freshmen_on_campus'],
        on_campus_living_requirement: college_data['school.campus.housing'],
        student_to_faculty_ratio: college_data['latest.student.size'],
        acceptance_rate: college_data['latest.admissions.admission_rate.overall'],
        graduation_rate_4yr: college_data['latest.completion.completion_rate_4yr_150nt'],
        graduation_rate_6yr: college_data['latest.completion.completion_rate_6yr_150nt'],
        retention_rate: college_data['latest.student.retention_rate'],
        diversity_percentage: college_data['latest.student.demographics.percent_minority'],
        latitude: college_data['school.lat'],
        longitude: college_data['school.lon']
      )
    end
  end

  private

  def calculate_proximity_to_beach(lat, lon)
    # Implement logic to calculate proximity to the beach
  end

  def calculate_financial_aid_percentage(college_data)
    # Implement logic to calculate financial aid percentage
  end
end
