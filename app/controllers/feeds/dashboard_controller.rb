class Feeds::DashboardController < ApplicationController
  layout 'dashboard'
  before_filter :require_feeds_login, :except => [:register_device]
  
  def index
    @lists = current_user.lists
  end

end
