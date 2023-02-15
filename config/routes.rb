Rails.application.routes.draw do
  resources :restaurants, only: %i[index new show create] do
    resources :reviews, only: %i[new create]
	end
end

# get '/restaurants', to: 'restaurants#index', as: :restaurants

# # Add new restaurant (new action/create action)
# get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
# post '/restaurants', to: 'restaurants#create'

# # Read one
# get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
