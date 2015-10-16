Sliders::Application.routes.draw do

  devise_for :users

  root 'home#index'
  resources :projects, only: [:index, :create, :update, :show]
  resources :priorities

  namespace :admin do
    resources :users, only: [:index, :create, :update, :destroy]
    resources :projects, only: [:index]
  end
end
