class Event < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  has_and_belongs_to_many :boardgames
  has_and_belongs_to_many :users

  belongs_to :organizer, class_name: "User"
end
