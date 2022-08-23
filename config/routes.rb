Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope 'api' do
    scope 'v1' do
      get 'promo/assing_product', to: 'promo#assing_product'
      get 'promo/unassing_product', to: 'promo#unassing_product'
      resources 'promo', only: [:index]

      get 'cart/add_to_cart', to: 'cart#add_to_cart'
      get 'cart/remove_from_cart', to: 'cart#remove_from_cart'
      resources 'cart', only: [:index]

      get 'products/seed/:id', to: 'products#seed'
      resources 'products'
    end
  end

end
