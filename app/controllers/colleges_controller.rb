class CollegesController < ApplicationController
  def index
    if params[:search].present?
      @colleges = College.where('school_name ILIKE ? OR state ILIKE ? OR city ILIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @colleges = College.all
    end
  end

  def show
    @college = College.find(params[:id])
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new(college_params)
    if @college.save
      redirect_to @college, notice: 'College was successfully created.'
    else
      render :new
    end
  end

  def edit
    @college = College.find(params[:id])
  end

  def update
    @college = College.find(params[:id])
    if @college.update(college_params)
      redirect_to @college, notice: 'College was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy
    redirect_to colleges_url, notice: 'College was successfully destroyed.'
  end

  private

  def college_params
    params.require(:college).permit(:school_name, :state, :city, :proximity_to_beach, :marine_biology_program_quality, :total_cost_in_state, :total_cost_out_state, :financial_aid_percentage, :average_financial_aid, :freshmen_class_size, :freshmen_living_on_campus_percentage, :on_campus_living_requirement, :student_to_faculty_ratio, :acceptance_rate, :graduation_rate_4yr, :graduation_rate_6yr, :retention_rate, :diversity_percentage, :average_class_size, :popular_majors, :extracurricular_activities, :sports_programs, :study_abroad_opportunities, :internship_opportunities, :campus_safety, :campus_facilities, :known_for, :social_scene, :commuter_residential_ratio, :nearby_attractions, :job_placement_rate, :alumni_network_strength, :climate)
  end
end
