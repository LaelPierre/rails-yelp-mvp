Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all restaurants
  get '/restaurants', to: 'restaurants#index'

  # create a restaurant
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  # Add a review
  get '/restaurants/:id/review/new', to: 'restaurants#review', as: :review_restaurant
  post '/restaurants', to: 'restaurants#create'

  # read a restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
end
