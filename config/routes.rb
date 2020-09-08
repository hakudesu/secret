Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chats#index'
  
  get 'top' =>'top#top_page'
  get 'chats' => 'chats#index'
  post 'chats' => 'chats#create'
  
end
