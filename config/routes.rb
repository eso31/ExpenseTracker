Rails.application.routes.draw do
  resources :withdraws
  root 'home#index'
  resources :expenses
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
