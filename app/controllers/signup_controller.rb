class SignupController < ApplicationController
  def index
    #cookies[:app] = { :value => "Testing", :expires => 1.week.from_now }
    #redirect_to root_url, :status => 301
    @apps = App.eligible_for_branding
    #if current_user
    #  apps = current_user.apps
    #  if apps.count == 1
    #    app = apps[0]
    #  end
    #end
  end

  def choose
    
  end
end
