Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: %i[ show ] do
    resources :sections, only: :index
  end

  resources :sections, only: [] do
    resources :edit_requests, only: [:new, :create]
  end
end
