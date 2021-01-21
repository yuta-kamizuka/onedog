Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # resources :dogs, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :dogs do
    collection do
      get  'purchase/:id'=>  'dogs#purchase', as: 'purchase'
      get  'done'=>      'dogs#done', as: 'done'
    end
  end

  resources :keep, only: [:index]

end
