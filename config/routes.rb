Rails.application.routes.draw do
  root to: 'pets#index'

  get '/pets', to: 'pets#index'

  # New
  get 'pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'

  # Show
  get '/pets/:id', to: 'pets#show', as: :pet

  # Edit
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  # create
  patch '/pets/:id', to: 'pets#update'

  # delete
  delete '/pets/:id', to: 'pets#destroy'
end
