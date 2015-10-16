Sliders::Application.routes.draw do

  devise_for :users

  root 'home#index'
  resources :projects, only: [:index, :create, :update, :show]
  resources :priorities
end
