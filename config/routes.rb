Rails.application.routes.draw do

  get 'contributors/new'
   mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts
  get 'homes/index'
  get 'homes/about'
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  post '/rate' => 'rater#create', :as => 'rate'
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
   resources :notifications, only: :index
   resources :city_introductions
   devise_for :customers
    resources :posts, only: [:new, :create, :index, :edit, :destroy] do
    resource :favorites, only: [:create, :destroy]
  end
  resources :customers, only: [:show, :new, :index, :edit]
end