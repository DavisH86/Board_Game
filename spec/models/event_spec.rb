require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "Associations" do
    it { should belong_to(:organizer) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end
end
