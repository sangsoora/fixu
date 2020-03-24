Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories do
    resources :problems, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :problems, only: [:edit, :show, :update, :destroy]

  resources :users, only: [:show]
end
