Studiopsyche::Application.routes.draw do

  root to: 'galleries#index'

  resources :pieces

  resources :galleries

  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new', via: :get
  match '/signout', to: 'sessions#destroy', via: :delete

end
