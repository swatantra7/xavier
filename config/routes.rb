Rails.application.routes.draw do

 devise_for :admin_users, skip: :registration
 resources :contacts
 resources :notices
 resources :images
 resources :courses, only: :index

end
