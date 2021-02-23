Rails.application.routes.draw do

  devise_for :users
  devise_for :users
  get 'top' => 'homes#top'
  get 'top' => 'homes#about'

  root 'post_images#index'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show]

end
