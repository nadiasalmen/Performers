Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'index', to: 'shows#index'
  get 'coming_soon', to: 'pages#coming_soon'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
