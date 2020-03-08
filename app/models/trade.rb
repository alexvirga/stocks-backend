class Trade < ApplicationRecord
  belongs_to :user
  validates :quantity, numericality: { only_integer: true, message: "must be a whole number" }
  validates :quantity, numericality: { :greater_than_or_equal_to => 1 }
end
