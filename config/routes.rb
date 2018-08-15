Rails.application.routes.draw do
  resources :vids
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
