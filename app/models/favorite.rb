class Favorite < ApplicationRecord
  belongs_to :user, presence: true
  belongs_to :boardgame, presence: true
end
