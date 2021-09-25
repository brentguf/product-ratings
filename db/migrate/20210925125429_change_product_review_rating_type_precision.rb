class ChangeProductReviewRatingTypePrecision < ActiveRecord::Migration[6.1]
  def up
    change_column :product_reviews, :rating, :float, :precision => 10, :scale => 1, :default => 0
  end

  def down
    change_column :product_reviews, :rating, :integer
  end
end
