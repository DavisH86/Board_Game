class Round < ApplicationRecord
  validates :number, presence: true

  belongs_to :boardgame
  belongs_to :event

  has_many :scores
end
