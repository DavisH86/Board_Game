Rails.application.routes.draw do
  root 'events#index'
  devise_for :users

  # namespace :api do
  #   namespace :v1 do
  #     resources :boardgames, only: [:index]
  #   end
  # end
  resources :events, only: [:index, :show, :create, :update]
  get '/boardgames', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
