class Event < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  belongs_to :user, presence: true
  belongs_to :boardgame, presence: true
end
