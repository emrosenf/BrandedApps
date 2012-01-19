class Api::SubscribersController < ApplicationController
  
  before_filter :find_subscriber, :except => [:create]
  
  def create
    retVal = {:status => 0}
    unless params[:email]
      retVal[:error] = "No email address given"
    end
    unless params[:password]
      retVal[:error] = "No password given"
    end
    unless retVal[:error]
      s = Subscriber.find_by_email params[:email]
      if s
        if s.authenticate params[:password]
          retVal[:status] = 1
          retVal[:access_token] = s.access_token
        else
          retVal[:error] = "User with this email address already exists, but the password you entered is incorrect."
        end
      else
        s = Subscriber.new(:email => params[:email], :password => params[:password])
        if s.save
          retVal[:status] = 1
          retVal[:access_token] = s.access_token
        else
          retVal[:error] = "Unable to create account"
        end
      end
    end
    render :json => retVal
  end
  
  def show
    
  end
  
  def lists
    lists = @subscriber.lists
    render :json => {:status => 1, :lists => lists}
  end
  
  
  private
    def find_subscriber
      @subscriber = Subscriber.find_by_access_token params[:access_token]
      unless @subscriber and params[:access_token]
        render :json => {:status => 0, :error => "You have entered an invalid access token"} and return
      end
    end
  
end