Rails.application.routes.draw do

  devise_for :users
  get 'top' => 'homes#top'
  get 'top' => 'homes#about'

  root 'post_images#index'

end
