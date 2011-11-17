class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    required = [:email, :password, :password_confirmation, :greeting, :greeting_active, :business_name, :logo_file]
    required.each{|r| render_404 unless params.has_key? r}
    debugger
    @user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password_confirmation])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render signup_path
    end
  end
end
