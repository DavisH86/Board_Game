class Score < ApplicationRecord
  validates :win, presence: true
  validates :loss, presence: true

  belongs_to :user
  belongs_to :round
end
