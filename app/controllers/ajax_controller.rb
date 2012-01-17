class AjaxController < ApplicationController
  
  def instance_lookup
    instance = AppInstance.find_by_code params[:code]
    retVal = {:status => 0}
    if instance
      retVal[:status] = 1
      retVal[:app] = instance.params
      retVal[:app][:banner] = instance.banner.url(:thumb)
      retVal[:app][:code] = instance.code
      retVal[:app].each {|k, v| retVal[:app][k] = 0 unless v}
      #retVal[:app][:interstitial] = "http://9to5mac.files.wordpress.com/2010/04/9to5mac.jpg"
      retVal[:app][:interstitialTime] = "2.5"
    end
    render :json => retVal
  end
  
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
