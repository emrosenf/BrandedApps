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
      syms = [:greeting, :greeting_on, :business_name]
      syms.each {|s| instance.send("#{s.to_s}=", params[s])}
      instance.save
      
      #Create Notification List
      list = List.create(:app_instance_id => instance.id, :name => "All Users")
      
      session[:user_id] = @user.id
      flash[:success] = "Congratulations! Your account has been created."
      redirect_to complete_setup_app_path(instance)
    else
      debugger
    end
  end
end
