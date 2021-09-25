class ProductReview < ApplicationRecord
  belongs_to :product

  validates_numericality_of :rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5
  validates :description, presence: true
end
