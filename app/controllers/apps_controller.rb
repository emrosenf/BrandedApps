class AppsController < ApplicationController
  
  layout 'dashboard'
  before_filter :require_login, :except => [:register_device, :show_landing_page, :list]
  before_filter :get_apps, :except => [:register_device, :show_landing_page, :list]
  
  
  def update_image
    if params.has_key? :logo_file
      @instance.banner = params[:logo_file]
      @instance.save
    end
    redirect_to settings_app_path(@instance) and return
  end
  
  def update
    @instance.update_settings(params)
    render :json => {:status => 1, :message => "<strong>Congrats!</strong> App settings updated.", :type => "info"}
  end
  
  def register_device
    token = params[:token] || render_404
    id = params[:id] || render_404
    instance = AppInstance.find_by_code id || render_404
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
    redirect_to app_path(@instance) and return
  end
  
  def complete_setup
    #redirect_to app_path(@instance) unless current_user.status == 1
  end
  
  def list
    instances = AppInstance.all
    retval = instances.collect{|a| {:business_name => a.business_name, :code => a.code, :image => a.banner.url(:thumb), :id => a.id}}
    render :json => retval
  end
  
  def index
    redirect_to app_path(@instance) and return
  end
  
  def show
    
  end
  
  def show_landing_page
    id = params[:id] || (redirect_to home_path and return)
    id = id.gsub(/_/, ' ')
    @instance = AppInstance.find_by_code id
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
    @list = @instance.lists.first
    @numSubscribers = @list.subscribers.count
    @notifications = @list.notifications
    @lastMessageSentAt = "No messages sent yet"
    if @notifications.count > 0
      @lastMessageSentAt = @notifications[0].created_at.to_s(:quick)
    end
    @numMessages = @list.notifications.count
  end


  protected
    
    def get_apps
      @instances = current_user.app_instances
      @instance = @instances.first
    end
end
