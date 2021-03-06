Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :licenses
  devise_for :users
  
  root to: 'pages#home'
  get 'users/profile', to: 'pages#user'
  get 'util/licenses', to: 'licenses#index'
  post 'util/licenses', to: 'license_decoder#upload'
  post 'admin/config', to: 'license_decoder#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

   