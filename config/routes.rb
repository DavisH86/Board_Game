Rails.application.routes.draw do
  root 'events#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  post 'boardgames/search', to: 'boardgames#search'

  resources :scoreboards

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show]
    end
  end

  resources :events, only: [:index, :show, :create, :update, :new, :edit] do
    resources :comments, only: [:new, :create]
    member do
      patch 'join'
    end
    collection do
      get 'search'
    end
    resources :scores, only: [:create]
    resources :boardgames, only: [:index, :new, :create]
  end

  resources :boardgames, only: [:index, :show, :create, :update, :new] do
    resources :reviews, only: [:new, :create]
    collection do
      get 'search'
    end
  end

  resources :locations, only: [:index, :new, :create, :show]
  resources :groups, only: [:index, :show, :create, :update, :new]
  resources :users, only: [:show]
  resources :scores
  # get '/boardgames', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
