Rails.application.routes.draw do
  resources :shows do
    put :favorite, on: :member
  end
  root 'home#index'
  devise_for :users
  resources :channels
end
