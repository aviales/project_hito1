Rails.application.routes.draw do
  resources :likes
  resources :tweets do
    post 'like', to: 'tweets#like'
    post 'retweet', to: 'tweets#retweet'
  end
  root 'tweets#index'
  get '/tweets/hashtag/:name', to:'tweets#hashtags'
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
