Rails.application.routes.draw do
  # resources :user_goals
  # resources :activity_entries
  # resources :mood_entries
  resources :blog_posts
  resources :activities
  resources :moods
  resources :prompts
  resources :daily_entries
  resources :goals
  resources :users

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
