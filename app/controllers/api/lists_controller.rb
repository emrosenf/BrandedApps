class Api::ListsController < ApplicationController
  before_filter :find_subscriber, :except => [:create]
  
a=  <<ENDL
  X information about a list
    - lists/:id
  - information about a user
    - subscribers/:id
  - which lists is a user subscribed to
    - subscribers/:id/lists
  - all lists from a particular account
    - users/:id/lists
  
  X subscribe user to list
    - lists/:id/subcribe_user
  X remove user from list  
    - lists/:id/unsubscribe
    
ENDL
  
  def subscribe
    list = List.find_by_id params[:id]
    retVal = {:status => 0}
    
    if @subscriber
      if @subscriber.subscribes_to? list
        retVal[:error] = "Subscriber already subscribes to this list"
      else
        list.subscribe @subscriber
        retVal[:status] = 1
      end
    else
      retVal[:error] = "Invalid subscriber_id. Subscriber doesn't exist"
    end
    
    render :json => retVal
  end
  
  def category_listing
    arr = List.find_all_by_category_id params[:id]
    unless arr
      arr = []
    end
    render :json => arr
  end
  
  def categories
    render :json => ListCategory.all
  end
  
  def unsubscribe
    list = List.find_by_id params[:id]
    retVal = {:status => 0}
    
    if @subscriber
      if @subscriber.subscribes_to? list
        list.unsubscribe @subscriber
        retVal[:status] = 1
      else
        retVal[:error] = "Subscriber does not subscribe to this list"
      end
    else
      retVal[:error] = "Invalid subscriber_id. Subscriber doesn't exist"
    end
  
    render :json => retVal
  end
  
  def index
    lists = List.active_feeds
    arr = []
    lists.each do |l|
      arr << {:name => l.name, :list_id => l.id, :description => l.description}
    end
    render :json => arr
  end
  
  def show
    l = List.find_by_id params[:id]
    if l 
      subscribed = @subscriber.subscribes_to?(l) ? 1 : 0
      retVal = {:name => l.name, :description => l.description, :list_id => l.id, :owner => l.user.name, 
        :status => 1, :subscribed => subscribed, :frequency => l.frequency}
    else
      retVal = {:status => 0, :error => "Invalid list id"}
    end
    render :json => retVal

  end
  
  private
     def find_subscriber
       @subscriber = Subscriber.find_by_access_token params[:access_token]
       unless @subscriber and params[:access_token]
         render :json => {:status => 0, :error => "You have entered an invalid access token"} and return
       end
     end
  
end