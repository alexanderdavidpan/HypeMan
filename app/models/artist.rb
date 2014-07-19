class Artist < ActiveRecord::Base
  has_secure_password
  has_many :songs

  validates :name, presence: true, uniqueness: true
end
