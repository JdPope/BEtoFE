Rails.application.routes.draw do
  resources :articles, only: [:index]
  resources :magazines, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :authors, only: [:index, :show, :create, :update, :destroy]
end
 