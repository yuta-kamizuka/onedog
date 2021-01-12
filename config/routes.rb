Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :dogs, only: [:index, :new, :create, :show]
end
