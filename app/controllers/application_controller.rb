class ApplicationController < ActionController::Base
    
    def after_sign_in_path_for(resource)
      top_home_path(resource)
    end
  
end
