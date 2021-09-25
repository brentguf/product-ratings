Rails.application.routes.draw do
  root 'products#index'
  
  resources :products do 
    resources :product_reviews, only: [:new, :create]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
