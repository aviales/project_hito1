Rails.application.routes.draw do
  get "tweets/search"
  resources :tweets do 
    
    resources :likes
    member do 
      post 'retweet'
      get 'retweet'
    end
  end

  devise_for :users
  root 'tweets#index'
end
