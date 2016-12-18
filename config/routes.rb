Rails.application.routes.draw do
  root 'studios#index'
  resources :rooms
  resources :studios
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
