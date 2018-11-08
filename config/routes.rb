Rails.application.routes.draw do
  get 'cocktails/', to: 'cocktails#index'
  get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  get 'cocktails/new', to: 'cocktails#new'
  get 'cocktails/create', to: 'cocktails#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
