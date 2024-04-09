class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, length: { in: 3..16 }
  validates :password, presence: true, length: { in: 8..64 }
  validates :email, presence: true, uniqueness: true,
    format: { with: URI::MailTo::EMAIL_REGEXP }

end
