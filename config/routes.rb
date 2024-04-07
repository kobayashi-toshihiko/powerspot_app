Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'power_spots#index'
  resources :prefectures, only: :show do
    resources :power_spots, only: [:index, :show], controller: 'prefectures/power_spots' 
  end
  resources :prefectures, only: [:index, :show]
  resources :power_spots, only: [:index]
  resources :elements, only: :show
  resources :category_blessings, only: :index
end

