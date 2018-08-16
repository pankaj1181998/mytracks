Rails.application.routes.draw do
  
  get 'apiyoutube/search'
  get 'apiyoutube/ldetails'
  post 'apiyoutube/ldetails'
  get 'apiyoutube/search' ,to: 'apiyoutube#search'
  post 'apiyoutube/search'
  resources :mydbs
  root :to => 'homepage#login'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'homepage/login'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
