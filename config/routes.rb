Rails.application.routes.draw do
  devise_for :drivers
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :users, only: [:index, :show]
  resources :drivers, only: [:index, :show]
end
