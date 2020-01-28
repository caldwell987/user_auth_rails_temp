class ApplicationController < ActionController::Base
    before_action :set_current_user

    skip_before_action :verify_authenticity_token
    # skip_before_action :verify_authenticity_token
    # skip_before_action :authenticated

    def set_current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end
    end
end
