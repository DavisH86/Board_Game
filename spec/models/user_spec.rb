require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Associations" do
    it { should have_many(:events) }
    it { should have_many(:boardgames).through(:events) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:encrypted_password) }
    it { should validate_presence_of(:email) }
  end
end
