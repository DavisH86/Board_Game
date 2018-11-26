require 'rails_helper'

RSpec.describe BoardgamesController do
  boardgame = Boardgame.create(title: "Jump", description: "Joy", rating: "5")
  describe "GET index" do
    it "assigns @boardgame" do
      get :index
      expect(assigns(:boardgames).count).to eq(1)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "displays a boardgame in show page" do
      a = Boardgame.first
      get :show, params: {id: a.id}

      expect(response).to render_template("show")
      expect(assigns(:boardgame)).to eq(a)
    end
  end
# x  describe "GET search" do
#     it "returns a blank boardgame is the search does not exist" do
#       get :search params: {title: "noneExist"}
#       expect(response.body).to eq([])
#     end
#
#     it "renders a boardgame if the search does exist" do
#       boardgame = Boardgame.create(title: "pop")
#       get :search params: {title: "pop"}
#       expect(response.body.count).to eq([1])
#     end
#
#     it "allows a user to search by name" do
#       boardgame = Boardgame.create(title: "pop")
#       get :search params: {title: "pop"}
#       expect(response.body.count).to eq([1])
#     end
#
#     it "allows a user to search by company" do
#       boardgame = Boardgame.create(company: "pop")
#       get :search params: {company: "pop"}
#       expect(response.body.count).to eq([1])
#     end
#   end
end
