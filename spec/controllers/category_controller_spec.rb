require 'rails_helper'

RSpec.describe CategoryController, type: :controller do

  describe "GET #name" do
    it "returns http success" do
      get :name
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #description" do
    it "returns http success" do
      get :description
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #slug" do
    it "returns http success" do
      get :slug
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tags" do
    it "returns http success" do
      get :tags
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user:references" do
    it "returns http success" do
      get :user:references
      expect(response).to have_http_status(:success)
    end
  end

end
