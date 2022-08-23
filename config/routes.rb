Rails.application.routes.draw do
  get 'promo/assing_product'
  get 'promo/unassing_product'
  get 'promo/index'
  get 'cart/index'
  get 'cart/add_to_cart'
  get 'cart/remove_from_cart'
  get 'products/seed'
  get 'products/resead'
  get 'products/show'
  get 'products/edit'
  get 'products/destroy'
  get 'products/create'
  get 'products/index'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
