Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'welcome/index'
  get 'posts/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :posts
  end

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/users/:id', to: 'users#show', as: 'profile'

  get '/posts/:id/edit', to: 'posts#edit', as: :edit_post
  patch 'posts/:id', to: 'posts#update'

  root 'welcome#index'
end
