Rails.application.routes.draw do
  devise_for :users
  root 'power_spots#index'
  namespace :power_spots do
    resources :prefecture_powerspot, only: [:index]
  end
  resources :power_spots, only: [:index]
end
