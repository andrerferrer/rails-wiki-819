Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: %i[ show ] do
    resources :sections, only: :index
  end

  resources :sections, only: [] do
    resources :edit_requests, only: [:new, :create, :index]
  end

  resources :edit_requests, only: [:update]

end
