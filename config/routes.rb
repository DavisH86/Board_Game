Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  post 'boardgames/search', to: 'boardgames#search'
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
  resources :events, only: [:index, :show, :create, :update, :new, :edit] do
    member do
      patch 'join'
    end
    resources :boardgames, only: [:index, :new, :create]
  end
  resources :groups, only: [:index, :show, :create, :update, :new]
  resources :boardgames, only: [:index, :show, :create, :update, :new] do
    collection do
      get 'search'
    end
  end


  # get '/boardgames', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
