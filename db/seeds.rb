Product.delete_all

product1 = Product.create!(
  title: 'My book'
)

product2 = Product.create!(
  title: 'My second book'
)

ProductReview.create!(
  rating: 5,
  description: %{Amazing},
  product: product1
)
ProductReview.create!(
  rating: 4,
  description: %{Great},
  product: product1
)
ProductReview.create!(
  rating: 3,
  description: %{It was okay},
  product: product1
)

ProductReview.create!(
  rating: 5,
  description: %{Amazing},
  product: product2
)
ProductReview.create!(
  rating: 4,
  description: %{Great},
  product: product2
)
ProductReview.create!(
  rating: 3,
  description: %{It was okay},
  product: product2
)