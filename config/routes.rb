Rails.application.routes.draw do
  devise_for :users
  root 'power_spots#index'
  get 'power_spots/prefecture_powerspot', to: 'power_spots#prefecture_powerspot'
  resources :power_spots, only: [:index, :new, :create]
end
