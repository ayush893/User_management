Rails.application.routes.draw do

	root 'users#index'

	resources :users
  #get 'users/index'
  #get 'users/show'
  #get 'users/new'
  #get 'users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
