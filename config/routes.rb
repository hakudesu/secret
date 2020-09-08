Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#top_page'
  
  get 'top' => 'top#top_page'
  get 'top/home' => 'top#home'
  get 'chats' => 'chats#index'
  post 'chats' => 'chats#create'
  
end
