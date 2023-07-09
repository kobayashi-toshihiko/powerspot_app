Rails.application.routes.draw do
  devise_for :users
  root 'power_spots#index'
  resources :prefectures, only: :show do
    resources :spots, only: :index
  end
  resources :prefectures, only: [:index, :show]
  resources :power_spots, only: [:index]
end

