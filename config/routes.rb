Studiopsyche::Application.routes.draw do

  root to: 'home#index'

  resources :pieces

  resources :galleries

end
