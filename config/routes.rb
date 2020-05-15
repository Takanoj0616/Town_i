Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/about'
  post '/rate' => 'rater#create', :as => 'rate'
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'

   resources :city_introductions
  devise_for :customers
  resources :posts, only: [:new, :create, :index, :show] do
   resource :post_comments, only: [:create]
  end
end