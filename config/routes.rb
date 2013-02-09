Goodtalk::Application.routes.draw do

  resources :events, only: [:index] do
    get :nearby, on: :collection
  end

  resources :sessions, only: [:index] do
    resources :evaluations, only: [:create]
  end

  root to: 'events#index'
end
