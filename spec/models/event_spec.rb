require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:boardgame) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:description) }
  end
end
