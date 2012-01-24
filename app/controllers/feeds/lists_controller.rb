class Feeds::ListsController < ApplicationController
  
  layout 'dashboard'
  
  def new
    @frequencies = ["Daily", "Weekly", "Monthly", "Yearly"]
  end
  
  def create
    required = [:name, :description, :frequency]
    required.each{|r| render_404 unless params.has_key? r}
    @list = List.new(:name => params[:name], :description => params[:description], 
      :frequency => params[:frequency], :user_id => current_user.id)
    if params[:category]
      @list.category_id = params[:category]
    end
    @list.save
    flash[:success] = "#{@list.name} has been created!"
    redirect_to feeds_dashboard_path and return
  end
  
  def create_message
    type = params[:type] || render_404
    @list = List.find_by_id params[:id]
    if @list and type == "group"
      ListNotification.create(:list_id => @list.id, :app_instance_id => 0, :app_id => 3, :alert => params[:alert], :sound => true, :badge => 0)
      app = App.find 3
      app.send_all_feed_notifications
    end
    
    render :json => {:status => 1}
  end
  
  def messages
    @list = List.find_by_id params[:id]
    @notifications = @list.notifications
  end
end