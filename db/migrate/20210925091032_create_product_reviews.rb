class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.integer :rating
      t.text :description
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
