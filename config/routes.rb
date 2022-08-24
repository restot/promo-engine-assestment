Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope 'api' do
    scope 'v1' do
      post 'promo/assing_product', to: 'promo#assing_product'
      post 'promo/unassing_product', to: 'promo#unassing_product'
      resources 'promo', only: [:index]

      post 'cart/add_to_cart', to: 'cart#add_to_cart'
      post 'cart/remove_from_cart', to: 'cart#remove_from_cart'
      resources 'cart', only: [:index]

      post 'products/seed/:id', to: 'products#seed'
      resources 'products'
    end
  end

end
