Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :dogs, only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
