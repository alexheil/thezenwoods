Rails.application.routes.draw do
  
  root 'static_pages#home'

  resources :emails, only: :create do 
    member do
      get :unsubscribe
    end
  end

  resources :posts

end
