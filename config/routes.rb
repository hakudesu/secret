Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#top_page'
  
  get 'top' => 'top#top_page'
  get 'chats' => 'chats#index'
  get 'chats/home' => 'chats#home'
  post 'chats' => 'chats#create'
  
end
