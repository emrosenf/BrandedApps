class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    required = [:email, :password, :password_confirmation, :app_id, :greeting, :greeting_on, :business_name, :logo_file]
    required.each{|r| render_404 unless params.has_key? r}
    app = App.find(params[:app_id]) || render_404
    @user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password_confirmation])
    @user.status = 1
    if @user.save
      instance = AppInstance.new
      instance.user = @user
      instance.app = app
      instance.banner = params[:logo_file]
      instance.params = {:greeting => params[:greeting], :greeting_on => params[:greeting_on], 
        :business_name => params[:business_name]}.to_json
      instance.save
      session[:user_id] = @user.id
      flash[:success] = "Congratulations! Your account has been created."
      redirect_to signup_choose_path
    else
      debugger
    end
  end
end
