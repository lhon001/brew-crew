class Brew < ApplicationRecord
  validates :strength, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}
end
