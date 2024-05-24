class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:logout]

    def logout
        cookies.delete(:_ecommerce_postgresql_session)
        redirect_to "/useres/sign_in"
    end    
end
