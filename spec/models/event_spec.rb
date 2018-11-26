require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "Associations" do
    it { should belong_to(:organizer) }
    it { should belong_to(:location) }
    it { should have_many(:comments) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end
end
