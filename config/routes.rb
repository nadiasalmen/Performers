Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'coming_soon', to: 'pages#coming_soon'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/shows', to: 'shows#index'
  get '/shows/:id', to: 'shows#show'
end
