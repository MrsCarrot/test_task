Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :categories

  #resources :users
  #root 'users#index'
end
