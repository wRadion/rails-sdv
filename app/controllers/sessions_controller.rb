class SessionsController < ApplicationController
  def new
  end

  def create
    email = session_params[:email]
    password = session_params[:password]

    user = User.find_by(email: email)

    logged_user = user.authenticate(password)
    if logged_user.present?
      session[:user_id] = logged_user.id
      redirect_to posts_path
    else
      flash[:error] = "Invalid password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end

  private

    def session_params
      params.permit(:email, :password)
    end
end
