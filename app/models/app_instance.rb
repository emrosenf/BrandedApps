class AppInstance < ActiveRecord::Base
  has_attached_file :banner, {}.merge(PAPERCLIP_STORAGE_OPTIONS)
  belongs_to :user
  belongs_to :app
  has_many :app_instance_subscribers
  has_many :subscribers, :through => :app_instance_subscribers
  
  serializeable :params, {:business_name => nil, :greeting => nil, :greeting_on => "on", 
    :twitter_on => "on", :twitter => nil, :phone_on => "on", :phone => nil, :email_on => "on",
    :email => nil, :address => nil, :city => nil, :state => nil, :zip => nil}
    
    
  #before_save do
  #  self.phone = self.phone.gsub(/[() -]/, '') if self.phone
  #  self.twitter = self.twitter.gsub(/@/, '') if self.twitter
  #end
  
  def update_settings(params)
    syms = [:business_name, :greeting, :greeting_on, :twitter_on, :phone_on, :email_on, :email, :address, :city, :zip, :state, :path]
    syms.each {|s| self.send("#{s.to_s}=", params[s]) if params[s]}
    if params[:phone]
      self.phone = params[:phone].gsub(/[() -]/, '')
    end
    if params[:twitter]
      self.twitter = params[:twitter].gsub(/@/, '')
    end
    if params[:logo_file]
      instance.banner = params[:logo_file]
    end
    self.save
  end
end
