Rails.application.routes.draw do
  root 'top#index'
  devise_for :users

  get 'list/new'
  post 'list/create'
  resources :top, only: %i(index)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, expect: %i(index)
  end
end
