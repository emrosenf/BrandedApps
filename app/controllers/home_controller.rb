class HomeController < ApplicationController
  def index
    if current_user
      if current_user.status == 1
        redirect_to complete_setup_app_path(current_user.app_instances.first)
      end
    end
  end

end
