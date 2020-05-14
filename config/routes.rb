Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'

   resources :city_introductions
  devise_for :customers

  # resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  #   resource :favorites, only: [:create, :destroy]
  #   resource :post_comments, only: [:create]
  # end
  resources :posts, only: [:new, :create, :index, :show] do
   resource :post_comments, only: [:create]
  end
end