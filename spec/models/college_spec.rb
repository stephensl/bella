require 'rails_helper'

RSpec.describe College, type: :model do
  it "is valid with valid attributes" do
    expect(build(:college)).to be_valid
  end

  it "is not valid without a school_name" do
    expect(build(:college, school_name: nil)).to_not be_valid
  end

  it "is not valid without a state" do
    expect(build(:college, state: nil)).to_not be_valid
  end

  it "is not valid without a city" do
    expect(build(:college, city: nil)).to_not be_valid
  end

  it "is not valid without an acceptance_rate" do
    expect(build(:college, acceptance_rate: nil)).to_not be_valid
  end

  it "is not valid without a freshmen_class_size" do
    expect(build(:college, freshmen_class_size: nil)).to_not be_valid
  end

  it "is not valid without an average_class_size" do
    expect(build(:college, average_class_size: nil)).to_not be_valid
  end

  it "is not valid without a student_to_faculty_ratio" do
    expect(build(:college, student_to_faculty_ratio: nil)).to_not be_valid
  end

  it "is not valid without a diversity_percentage" do
    expect(build(:college, diversity_percentage: nil)).to_not be_valid
  end

  it "is not valid without an on_campus_living_requirement" do
    expect(build(:college, on_campus_living_requirement: nil)).to_not be_valid
  end

  it "is not valid without a total_cost_in_state" do
    expect(build(:college, total_cost_in_state: nil)).to_not be_valid
  end

  it "is not valid without a total_cost_out_state" do
    expect(build(:college, total_cost_out_state: nil)).to_not be_valid
  end

  it "is not valid without a financial_aid_percentage" do
    expect(build(:college, financial_aid_percentage: nil)).to_not be_valid
  end

  it "is not valid without a graduation_rate_4yr" do
    expect(build(:college, graduation_rate_4yr: nil)).to_not be_valid
  end

  it "is not valid without a retention_rate" do
    expect(build(:college, retention_rate: nil)).to_not be_valid
  end

  it "is not valid without a graduation_rate_6yr" do
    expect(build(:college, graduation_rate_6yr: nil)).to_not be_valid
  end

  it "is not valid without a freshmen_living_on_campus_percentage" do
    expect(build(:college, freshmen_living_on_campus_percentage: nil)).to_not be_valid
  end
end

