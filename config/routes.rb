Sliders::Application.routes.draw do

  devise_for :users

  root 'home#index'
  resources :projects, only: [:index, :create, :update, :show]
  resources :priorities

  namespace :admin do
    resource :settings
  end
end
