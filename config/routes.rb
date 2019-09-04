Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :users do
    collection do
      get "logout"
    end
  end
  resources :cards do
    collection do
      get "add"
    end
  end
  resources :items do
    collection do
      get "confirmation" 
    end
  end
end
