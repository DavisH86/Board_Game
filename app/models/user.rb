class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable

  mount_uploader :profile_photo, ProfilePhotoUploader

  validates :name, presence: true
  validates :encrypted_password, presence: true
  validates :email, presence: true

  has_and_belongs_to_many :events
  has_and_belongs_to_many :groups

  has_many :boardgames, through: :events
  has_many :events, foreign_key: "organizer_id"

  has_many :comments
  has_many :scores
  has_many :reviews

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.info.name
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
