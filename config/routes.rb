Rails.application.routes.draw do
  get 'cycle_tracker/index'

  resources :rides
  resources :bikes

  root 'cycle_tracker#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end