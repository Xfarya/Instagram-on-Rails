Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users, only: [:show, :edit, :update]

  resources :posts, only: [:new, :create, :show, :destroy]

  get 'search' => 'search#index'
end

