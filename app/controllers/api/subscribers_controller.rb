class Api::SubscribersController < ApplicationController
  def create
    retVal = {:status => 0}
    unless params[:email]
      retVal[:error] = "No email address given"
    end
    unless params[:password]
      retVal[:error] = "No password given"
    end
    unless retVal[:error]
      s = Subscriber.new
      s.email = params[:email]
      s.password = params[:password]
      if s.save
        retVal[:status] = 1
      else
        retVal[:error] = "Unable to create account"
      end
    end
    render :json => retVal
  end
  
  def show
    
  end
end