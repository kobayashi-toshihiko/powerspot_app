Rails.application.routes.draw do
  devise_for :users
  root 'power_spots#index'
  # resources :prefectures, only: :show do
  #   resources :powerspots, only: :index
  # end

  resources :prefectures, only: [:index]
  resources :power_spots, only: [:index]
  
end

