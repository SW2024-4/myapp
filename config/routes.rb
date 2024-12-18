Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :budgets
  resources :users, only: [:new, :create, :destroy]
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root "top#main"
end
