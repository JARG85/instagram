Rails.application.routes.draw do
  resources :logins
  get '/messages', to: 'message#index'
  get '/profile', to: 'profile#index'
  get '/post-list', to: 'post_list#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
