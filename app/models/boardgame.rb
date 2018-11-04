class Boardgame < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, presence: true

  has_and_belongs_to_many :events

  has_many :scores
  has_many :reviews
end
