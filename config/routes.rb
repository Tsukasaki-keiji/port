Rails.application.routes.draw do

  devise_for :users
  get 'top' => 'homes#top'
  get 'top' => 'homes#about'

end
