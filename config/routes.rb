Rails.application.routes.draw do
  root 'homes#index'
  resources :dogs, only: [:index, :new, :create, :show]
end
