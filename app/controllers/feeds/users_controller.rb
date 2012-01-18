class Feeds::UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    required = [:email, :password, :password_confirmation, :name]
    required.each{|r| render_404 unless params.has_key? r}
    @user = User.find_by_email(params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to apps_url, :notice => "Logged in!" and return
      else
        flash[:error] = "Invalid email or password"
        redirect_to login_path and return
      end
    end
    @user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password_confirmation])
    @user.name = params[:name]
    @user.status = 1
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Congratulations! Your account has been created."
      redirect_to new_feeds_list_path and return
    else
      debugger
    end
  end
  
end
