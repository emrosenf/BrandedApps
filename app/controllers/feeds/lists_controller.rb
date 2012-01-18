class Feeds::ListsController < ApplicationController
  
  layout 'dashboard'
  
  def new
    @frequencies = ["Daily", "Weekly", "Monthly", "Yearly"]
  end
  
  def create
    required = [:name, :description, :frequency]
    required.each{|r| render_404 unless params.has_key? r}
    @list = List.create(:name => params[:name], :description => params[:description], 
      :frequency => params[:frequency], :user_id => current_user.id)
    flash[:success] = "#{@list.name} has been created!"
    redirect_to feeds_dashboard_path and return
  end
  
  
  def messages
    @list = List.find params[:id]
    @notifications = @list.notifications
  end
end