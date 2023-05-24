Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to 'r'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants', to: 'restaurants#new', as: 'new'
end
