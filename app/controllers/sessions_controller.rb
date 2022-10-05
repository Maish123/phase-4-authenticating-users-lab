class SessionsController < ApplicationController
    # for loggin in
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    # for logging out, we must destroy the session created
    def destroy
        session.delete :user_id
        head :no_content
    end
end
