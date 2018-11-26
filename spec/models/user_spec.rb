require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Associations" do
    it { should have_many(:events) }
    it { should have_many(:boardgames).through(:events) }
    it { should have_many(:comments) }
    it { should have_many(:reviews) }
    it { should have_many(:follower_followships) }
    it { should have_many(:followeds).through(:follower_followships) }
    it { should have_many(:followed_followships) }
    it { should have_many(:followers).through(:followed_followships) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:encrypted_password) }
    it { should validate_presence_of(:email) }
  end
end
