Rails.application.routes.draw do
  resources :budgets
  
  root 'budgets#index'
end
