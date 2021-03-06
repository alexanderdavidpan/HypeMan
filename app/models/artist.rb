class Artist < ActiveRecord::Base  
  has_secure_password
  has_many :songs

  validates :name, :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
