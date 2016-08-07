Rails.application.routes.draw do


  resources :articles

  devise_for :users
  get 'welcome/about'

  root 'welcome#index'
end
