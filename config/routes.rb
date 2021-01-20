Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'us', to: 'pages#us'
  get 'home2', to: 'pages#home2'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
