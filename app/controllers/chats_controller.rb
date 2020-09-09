class ChatsController < ApplicationController
    
    def index
        @chats = Chat.all
    end
    
    def create
        Chat.create(chat_params)
    end
    
    def home
    end
    
    private
    def chat_params
        params.permit(:name, :text, :image )
    end
    
    
end
