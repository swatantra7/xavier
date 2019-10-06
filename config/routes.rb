Rails.application.routes.draw do

 devise_for :admin_users, skip: :registration
 resources :contacts
 resources :notices do
    collection do
      get 'notifications'
    end
 end
 resources :images
 resources :courses, only: :index

end
