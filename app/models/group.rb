class Group < ApplicationRecord
  validates :name, presence: true

  has_many :events

  has_and_belongs_to_many :users
end
