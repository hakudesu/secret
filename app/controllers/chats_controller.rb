class ChatsController < ApplicationController
    
    before_action :move_to_top_page
    
    def home
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
    
    def move_to_top_page
        redirect_to :controller => 'top', :action => 'top_page' unless user_signed_in?
    end
    
end
