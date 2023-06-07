Rails.application.routes.draw do
  devise_for :users
  # root 'tops#index'
  resources :power_spots, only: [:index, :new, :create]
end
