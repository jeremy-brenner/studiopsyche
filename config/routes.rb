Studiopsyche::Application.routes.draw do

  root to: 'galleries#index'

  resources :pieces

  resources :galleries

end
