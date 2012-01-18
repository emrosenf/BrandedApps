class Api::ListsController < ApplicationController
  
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
    subscriber_id = params[:subscriber_id]
    subscriber = Subscriber.find_by_id subscriber_id
    
    retVal = {:status => 0}
    
    if subscriber
      if subscriber.subscribes_to? list
        retVal[:error] = "Subscriber already subscribes to this list"
      else
        list.subscribe subscriber
        retVal[:status] = 1
      end
    else
      retVal[:error] = "Invalid subscriber_id. Subscriber doesn't exist"
    end
    
    render :json => retVal
  end
  
  def unsubscribe
    list = List.find_by_id params[:id]
    subscriber_id = params[:subscriber_id]
    subscriber = Subscriber.find_by_id subscriber_id
    retVal = {:status => 0}
    
    if subscriber
      if subscriber.subscribes_to? list
        list.unsubscribe subscriber
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
    lists = List.all
    arr = []
    lists.each do |l|
      arr << {:name => l.name, :list_id => l.id}
    end
    render :json => arr
  end
  
  def show
    l = List.find_by_id params[:id]
    retVal = {:name => l.name, :list_id => l.id, :controller => "show"}
    render :json => retVal
  end
  
end