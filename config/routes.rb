Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/admin' => "admin#index"
  get '/add_to_cart' => "shopping_cart#add_to_cart"
  get '/cart' => "shopping_cart#cart"
  get '/checkout/address' => "checkout#address"
  get '/states' => 'checkout#state'
    
  namespace :admin do
  	resources :products
  end
end
