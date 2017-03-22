class SessionsController < ApplicationController
    #user should have to be logged in before loggin in!
    skip_before_filter :set_current_user
    def create
        auth= request.env["omniauth.auth"]
        user=Twitteruser.where(:provider => auth["provider"], :uid => auth["uid"])
            Twitteruser.create_with_omniauth(auth)
        session[:user_id] = user.id
        redirect to categories_path
    end
    
    def destroy
        session.delete(:user_id)
        flash[:notice] = "Logged out successfully"
        redirect to categories_path
    end
end
