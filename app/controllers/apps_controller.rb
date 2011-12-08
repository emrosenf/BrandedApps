class AppsController < ApplicationController
  
  layout 'dashboard'
  before_filter :get_apps
  
  
  def post_complete_setup
    syms = [:twitter_on, :email_on, :email, :phone_on, :address, :city, :zip, :state, :path]
    syms.each {|s| @instance.send("#{s.to_s}=", params[s])}
    @instance.phone = params[:phone].gsub(/[() -]/, '')
    @instance.twitter = params[:twitter].gsub(/@/, '')
    @instance.save
    current_user.status == 0
    current_user.save
    redirect_to app_path(@instance)
  end
  
  def complete_setup
    redirect_to app_path(@instance) unless current_user.status == 1
  end
  
  def index
    redirect_to app_path(@instance)
  end
  
  def show
    
  end

  def messages
  end
  
  def messages_create
    notif = APN::Notification.new
    notif.alert = params[:alert]
    notif.device = APN::Device.first
    notif.sound = true
    notif.save
    
    render :json => {:status => 1, :message => {:recipients => "everyone", :alert => params[:alert], :date => notif.created_at}}
  end

  def settings
  end

  def analytics
  end


  protected
    
    def get_apps
      @instances = current_user.app_instances
      @instance = @instances.first
    end
end
