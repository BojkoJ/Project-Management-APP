Rails.application.routes.draw do
  resources :tasks
  resources :projects
  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :users
  resources :friends

  resources :projects do
    resources :tasks, only: [:index]
  end

  root 'home#index'
end
