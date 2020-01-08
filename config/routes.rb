Rails.application.routes.draw do

  devise_for :admin_users, skip: :registration
  resources :contacts
  resources :notices do
    collection do
      get 'notifications'
    end
  end

  resources :images do
    collection do
      get :gallery
    end
  end

  resources :courses, only: :index

  resources :students do
    member do
      put :approve
      get :download
    end
  end

  resources :documents, only: [] do
    member do
      get :download
    end
  end

end
