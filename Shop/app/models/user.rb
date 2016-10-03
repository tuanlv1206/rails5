class User < ApplicationRecord
  has_one :auth_token, dependent: :destroy
  has_secure_password
  validates :name, presence: true

  validates :email, presence: true, uniqueness: { case_sensitive: false }, email: true
end
