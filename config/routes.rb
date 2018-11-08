Rails.application.routes.draw do

  resources :cocktails, only: [:index, :new, :show, :create]

  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new'
  get 'cocktails/:cocktail_id/doses', to: 'cocktails#show', as: 'doses'
  post 'cocktails/:cocktail_id/doses', to: 'doses#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
