class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_secure_password

  validates :name, presence: true, length: { in: 3..16 }
  validates :password, presence: true, length: { in: 8..64 }, if: -> { password_digest.empty? }
  validates :password_confirmation, presence: true, if: -> { password_digest.empty? }
  validates_confirmation_of :password
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
