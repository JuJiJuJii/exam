Exam::Application.routes.draw do
  resources :comments,   only: [:create, :show, :destroy]

  resources :users
  resources :sessions,   only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :show, :destroy]
  root  'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
 
  # get "static_pages/contact"
  # get "static_pages/home"
  # get "static_pages/help"
  # get "static_pages/about"
  # get "static_pages/contact"
end
