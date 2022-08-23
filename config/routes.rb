Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  get 'promo/assing_product'
  get 'promo/unassing_product'
  get 'promo/index'

  get 'cart/index'
  get 'cart/add_to_cart'
  get 'cart/remove_from_cart'

  resources 'products' do
    get 'products/seed'
    get 'products/resead'
  end

end
