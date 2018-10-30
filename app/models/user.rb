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

  has_and_belongs_to_many :events
  has_and_belongs_to_many :groups

  has_many :boardgames, through: :events
  has_many :events, foreign_key: "supervisor_id"

  def full_name
    `#{first_name} #{last_name}`
  end
end
