Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'
  get 'city_introduction/index'
  get 'city_introduction/show'
   get 'city_introduction/new'
  devise_for :customers
  
end
