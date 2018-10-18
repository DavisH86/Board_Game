class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence: true
  validates :encrypted_password, presence: true
  validates :email, presence: true
  validates_uniqueness_of :user_name

  has_many :events
  has_many :boardgames, through: :events
end
