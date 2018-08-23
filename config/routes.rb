Rails.application.routes.draw do
  
  get 'mytickets/details'
  get 'flight/search'
  resources :personals
  resources :buys
  get 'usage/steps'
  get 'privacy/policy'
  get 'information/contact'
  get 'apiyoutube/search'
  get 'apiyoutube/ldetails'
  post 'apiyoutube/ldetails'
  get 'apiyoutube/search' ,to: 'apiyoutube#search'
  post 'apiyoutube/search'
  resources :mydbs
 root :to => 'flight#search'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'homepage/login'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
