class User < ApplicationRecord
  has_secure_password
  has_many :trades
  validates :username, presence: true
  validates :username, length: { minimum: 4 }
  validates :email, presence: true
  validates :balance, numericality: { :greater_than_or_equal_to => 0, message: "too low." }
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
