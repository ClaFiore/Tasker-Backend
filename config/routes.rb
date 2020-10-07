Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :employees
      resources :goals
      resources :notifications
      resources :projects
      resources :tasks
      resources :teams
      post '/login', to: 'auth#create'
    end
  end

end
