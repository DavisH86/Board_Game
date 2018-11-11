require 'rails_helper'
describe EventsController do
  # describe "POST event" do
  #   it "creates an event" do
  #     post :create, params: {name: "Jack", description: "Fun", location: "boston" }
  #     expect(response).to render_templae("show")
  #   end
  # end
  before(:each) do
    user = User.create(email: "testing@gmail.com", name: "username", password: "password1")
    boardgame = Boardgame.create(title: "Bat", description: "man", rating: 4)
    Event.create(name: "Jump", description: "Clock", location_id: 1, organizer_id: 1, boardgame_ids: 1)
    Event.create(name: "rock", description: "house", location_id: 2, organizer_id: 2, boardgame_ids: 1)
  end

  describe "GET index" do
    it "displays a list of events" do
      get :index
      expect(response).to render_template("index")
      expect(assigns(:events).count).to eq(2)
    end
  end

  describe "GET show" do
    it "displays an event in show page" do
      a = Event.last
      get :show, params: {id: a.id}

      expect(response).to render_template("show")
      expect(assigns(:event)).to eq(a)
    end
  end
end
