Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'promises#index'

  resources :promises, only: [:index, :show, :new, :create]
end
