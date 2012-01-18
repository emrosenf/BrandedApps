class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if params[:next]
        redirect_to params[:next], :notice => "Logged in!" and return
      else
        redirect_to apps_url, :notice => "Logged in!" and return
      end
    else
      flash.now[:error] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!" and return
  end

end
