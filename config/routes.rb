Rails.application.routes.draw do
  resources :withdraws
  root 'home#index'
  resources :expenses
  resources :categories

  get '/month_expenses', to: "expenses#month_expenses", as: 'month_expenses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
