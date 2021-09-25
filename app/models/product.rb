class Product < ApplicationRecord
  has_many :product_reviews, dependent: :destroy

  validates :title, presence: true

  def average_rating
    ratings = product_reviews.to_a
      .map { |product_review| product_review.rating }

    (ratings.sum.to_f / ratings.size).round(1)
  end
end
