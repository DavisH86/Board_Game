RSpec.describe EventsController do
  describe "POST event" do
    it "creates an event" do
      post :create, params: {name: "Jack", description: "Fun", location: "boston" }
      expect(response).to render_templae("show")
    end
  end
end
