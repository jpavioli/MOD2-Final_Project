class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :username, presence: true
  validates :password_digest, presence: true
  validates :user_type, presence: true

end
