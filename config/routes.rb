Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'

   resources :city_introductions
  devise_for :customers
  
end
