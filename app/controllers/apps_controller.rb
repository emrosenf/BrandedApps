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
    device = APN::Device.create(:token => token, :app_id=> instance.id)
    begin
      device.save
      status = 1
    rescue
    # device already exists  
      status = 0
    end
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
  end
  
  def messages_create
    devices = APN::Device.find_all_by_app_id @instance.id
    devices.each do |d|
      notif = APN::Notification.new
      notif.alert = params[:alert]
      notif.device = d
      notif.sound = true
      notif.save      
    end
    
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
