class User < ApplicationRecord
  has_many :posts
  validates :username, uniqueness: true, presence: true, length: {minimum: 6, maximum: 16}, on: :create, allow_nil: false
  validates :password, presence: true, length: {minimum: 6, maximum: 16}, on: :create, allow_nil: false
  validates :email, presence: true, length: {minimum: 5, maximum: 200}, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
