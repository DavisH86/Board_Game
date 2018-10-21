RSpec.describe GroupsController do
  describe "POST group" do
    it "creates a group" do
      post :create, params: {name: "Jone", description: "Are Back" }
      expect(response).to render_templae("show")
    end
  end
end
