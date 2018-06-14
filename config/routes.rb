Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/brews/strongest', to: 'brews#strongest'
  resources :brews
  resources :purchases, only: [:new, :create, :show]
  get '/customers/:id', to: 'customers#show', as: 'customer'




end
