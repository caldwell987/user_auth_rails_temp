Rails.application.routes.draw do
  
  root to: "user#index"
      
      resources :users, only: [:index]
      get 'user_id/:id', to: "users#find_by_id"
      get '/users/currentuser', to: 'users#render_current_user'
      # get 'users/user_username/:username', to: "users#find_by_username"

      resources :sessions, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: 'sessions#logged_in'
      # get '/sessions/currentuser', to: 'sessions#currentUser'

      resources :registrations, only: [:create]

      resources :contacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
