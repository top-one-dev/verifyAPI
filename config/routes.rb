Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :companies
  resources :consumers
  resources :users
  
  post 'trans_union/consumer'
  post 'trans_union/commerce'
  
	post 'auth/login', to: 'authentication#authenticate'

end
