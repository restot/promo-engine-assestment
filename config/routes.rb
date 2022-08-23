Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  resources 'promo', only: [:index] do
    get 'assing_product'
    get 'unassing_product'
  end

  resources 'cart', only: [:index] do
    get 'add_to_cart'
    get 'remove_from_cart'
  end

  resources 'products' do
    get 'seed'
    get 'resead'
  end

end
