class AppInstance < ActiveRecord::Base
  has_attached_file :banner, {}.merge(PAPERCLIP_STORAGE_OPTIONS)
  belongs_to :user
  belongs_to :app
  has_many :app_instance_subscribers
  has_many :subscribers, :through => :app_instance_subscribers
  
  serializeable :params, {:business_name => nil, :greeting => nil, :greeting_on => "on", 
    :twitter_on => "on", :twitter => nil, :phone_on => "on", :phone => nil, :email_on => "on",
    :email => nil, :address => nil, :city => nil, :state => nil, :zip => nil}
end
