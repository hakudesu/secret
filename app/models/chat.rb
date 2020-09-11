class Chat < ApplicationRecord
    # validates :chat, presence: true
    
    after_create_commit {ChatBroadcastJob.perform_later self}
    
end
