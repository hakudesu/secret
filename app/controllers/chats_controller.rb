class ChatsController < ApplicationController
    
    before_action :move_to_turn, except: :turn
    
    def home
    end
    
    def turn
    end
    
    def index
        @chats = Chat.all
    end
    
    def create
        Chat.create(chat_params)
    end
    
    private
    def chat_params
        params.permit(:name, :text, :image )
    end
    
    def move_to_turn
        redirect_to action: :turn unless user_signed_in?
    end
    
end
