class Trade < ApplicationRecord
  belongs_to :user
  validates :quantity, numericality: { only_integer: true, message: "must be a whole number" }
end
