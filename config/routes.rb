Rails.application.routes.draw do
  devise_for :users
  root 'power_spots#index'
  resources :power_spots, only: [:index, :new, :create]
end
