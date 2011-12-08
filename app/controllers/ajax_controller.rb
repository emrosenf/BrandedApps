class AjaxController < ApplicationController
  
  def get_app_info
    app_instance = nil
    retVal = {}
    if cookies[:uid]
      log = AppLinkLog.find_by_uid(cookies[:uid])
      if log
        app_instance = log.app_instance
        log.installed_at = Time.now
        log.save
      end
    end

    if app_instance
      retVal = app_instance.serialize
    end
    render :json => retVal
  end
    
  
  def app_link
    log = nil
    if cookies[:uid]
      log = AppLinkLog.find_by_uid(cookies[:uid])
      if log
        log.updated_at = Time.now
      end
    end
    unless log
      #instance = AppInstance.where(:path => params[:uid])
      log = AppLinkLog.new
      log.uid = Digest::MD5.hexdigest(request.remote_ip).encode('UTF-8')
      cookies[:uid] = { :value => log.uid, :expires => 1.week.from_now }
      log.app_instance = AppInstance.first  
    end
    log.save
      
    redirect_to root_url, :status => 301
  end
  
end
