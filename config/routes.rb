Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :boardgames, only: [:index, :show]
    end
  end
  get '/boardgames', to: 'homes#index'
  get '/boardgames/:id', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
