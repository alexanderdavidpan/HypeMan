class User < ActiveRecord::Base
  protect_from_forgery
  
  has_secure_password
  has_many :favorites
  has_many :songs, through: :favorites

  validates :username, :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
