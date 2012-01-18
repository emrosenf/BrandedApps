class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  def render_404
    raise ActionController::RoutingError.new('This is not the page you are looking for.')
  end
  
  def require_feeds_login
    unless current_user
      redirect_to login_url+"?next=/feeds/dashboard"
    end
  end
  
  def require_login
    unless current_user
      redirect_to login_url+"?next=/dashboard" and return
    end
  end
  
  private
  

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
end
