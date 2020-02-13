Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/cocktails', to: 'cocktails#index', as: 'cocktails'
  get '/cocktails/new', to: 'cocktails#new', as: 'new'
  get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  post '/cocktails', to: 'cocktails#create'

  get '/cocktails/:cocktail_id/doses/new', to: 'doses#new', as: 'new_dose'
  post '/cocktails/:cocktail_id/doses', to: 'doses#create', as: 'cocktail_doses'
  delete '/cocktails/:cocktail_id/doses/:id', to: 'doses#destroy', as: 'destroy_dose'
end
