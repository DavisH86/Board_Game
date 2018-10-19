require 'rails_helper'

RSpec.describe Boardgame, type: :model do
  describe "Associations" do
    it { should have_many(:events)}
    it { should have_many(:users).through(:events)}
  end
  describe "Validations" do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:rating)}
  end
end
