class ProductReview < ApplicationRecord
  belongs_to :product

  validates_numericality_of :rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5
  validates :description, presence: true
  validate :is_rating_valid

  private

  def is_rating_valid
    if self.rating % 0.5 != 0
      errors.add(:rating_validity, "Rating needs to be multiple of 0.5")
    end
  end
end
