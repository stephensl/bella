require 'rails_helper'

RSpec.describe CollegesController, type: :controller do
  let(:valid_attributes) {
    attributes_for(:college)
  }

  let(:invalid_attributes) {
    { school_name: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      College.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      college = College.create! valid_attributes
      get :show, params: { id: college.to_param }
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      college = College.create! valid_attributes
      get :edit, params: { id: college.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new College" do
        expect {
          post :create, params: { college: valid_attributes }
        }.to change(College, :count).by(1)
      end

      it "redirects to the created college" do
        post :create, params: { college: valid_attributes }
        expect(response).to redirect_to(College.last)
      end
    end

    context "with invalid parameters" do
      it "does not create a new College" do
        expect {
          post :create, params: { college: invalid_attributes }
        }.to change(College, :count).by(0)
      end

      # Fixed: Updated to render the 'new' template instead of incorrectly indicating a successful response
      it "renders the new template again" do
        post :create, params: { college: invalid_attributes }
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { city: "San Francisco" }
      }

      it "updates the requested college" do
        college = College.create! valid_attributes
        put :update, params: { id: college.to_param, college: new_attributes }
        college.reload
        expect(college.city).to eq("San Francisco")
      end

      it "redirects to the college" do
        college = College.create! valid_attributes
        put :update, params: { id: college.to_param, college: new_attributes }
        expect(response).to redirect_to(college)
      end
    end

    context "with invalid parameters" do
      # Fixed: Updated to render the 'edit' template instead of incorrectly indicating a successful response
      it "renders the edit template again" do
        college = College.create! valid_attributes
        put :update, params: { id: college.to_param, college: invalid_attributes }
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested college" do
      college = College.create! valid_attributes
      expect {
        delete :destroy, params: { id: college.to_param }
      }.to change(College, :count).by(-1)
    end

    it "redirects to the colleges list" do
      college = College.create! valid_attributes
      delete :destroy, params: { id: college.to_param }
      expect(response).to redirect_to(colleges_url)
    end
  end
end
