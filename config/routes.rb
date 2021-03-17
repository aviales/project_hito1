Rails.application.routes.draw do
  resources :likes
  resources :tweets
  devise_for :users
  root 'tweets#index'
end
