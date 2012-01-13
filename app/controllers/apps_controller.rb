class AppsController < ApplicationController
  
  layout 'dashboard'
  before_filter :require_login, :except => [:register_device]
  before_filter :get_apps, :except => [:register_device]
  
  
  def update
    @instance.update_settings(params)
    render :json => {:status => 1, :message => "<strong>Congrats!</strong> App settings updated.", :type => "info"}
  end
  
  def register_device
    token = params[:token] || render_404
    id = params[:id] || render_404
    instance = AppInstance.find id || render_404
    subscriber = Subscriber.find_or_create_by_token(token)
    subscriber.subscribe_to_instance instance
    subscriber.subscribe_to_list instance.lists.first
    status = 0
    render :json => {:status => status}
  end
  
  def post_complete_setup
    @instance.update_settings(params)
    current_user.status = 0
    current_user.save
    redirect_to app_path(@instance)
  end
  
  def complete_setup
    #redirect_to app_path(@instance) unless current_user.status == 1
  end
  
  def index
    redirect_to app_path(@instance)
  end
  
  def show
    
  end

  def messages
    @notifications = @instance.lists.first.notifications
  end
  
  def messages_create
    type = params[:type] || render_404
    if type == "group"
      notif = @instance.message_everyone(params)
    end
    #devices = APN::Device.find_all_by_app_id @instance.app_id
    #devices.each do |d|
    #  notif = APN::Notification.new
    #  notif.alert = params[:alert]
    #  notif.device = d
    #  notif.sound = true
    #  notif.save      
    #end
    
    render :json => {:status => 1, :message => {:recipients => "everyone", :alert => params[:alert], :date => Time.now.to_s(:quick)}}
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
