class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :event
  belongs_to :user
end
