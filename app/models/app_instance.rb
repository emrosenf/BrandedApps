class AppInstance < ActiveRecord::Base
  has_attached_file :banner, {}.merge(PAPERCLIP_STORAGE_OPTIONS)
  belongs_to :user
  belongs_to :app
  has_many :lists, :dependent => :destroy
  has_many :app_instance_subscribers, :dependent => :destroy
  has_many :subscribers, :through => :app_instance_subscribers
  
  #before_create do
  #  self.code = SecureRandom.hex(2)
  #  while AppInstance.find_by_code(self.code)
  #    self.code = SecureRandom.hex(2)
  #  end
  #end
  
  serializeable :params, {:business_name => '', :greeting => '', :greeting_on => true, 
    :twitter_on => false, :twitter => '', :phone_on => false, :phone => '', :email_on => true,
    :email => '', :address => '', :city => '', :state => '', :website => '', :website_on => false, :zip => ''}
    
    
  before_save do
    #self.twitter_on ||= false
    
    #self.phone = self.phone.gsub(/[() -]/, '') if self.phone
    #self.twitter = self.twitter.gsub(/@/, '') if self.twitter
  end
  
  after_initialize do
    self.greeting_on = self.greeting_on || 1
    self.email_on = self.email_on || "0"
    self.website_on = self.website_on || "0"
    self.twitter_on = self.twitter_on || "0"
    self.phone_on = self.phone_on || "0"
    self.twitter = self.twitter ? self.twitter.gsub(/@/, '') : ''
    self.phone = self.phone ? self.phone.gsub(/[() -]/, '') : ''
  end
  
  def message_everyone(params)
    list = self.lists.first
    ListNotification.create(:list_id => list.id, :app_instance_id => self.id, :app_id => self.app_id, :alert => params[:alert], :sound => true, :badge => 0)
    self.app.send_all_notifications
  end
  
  def update_settings(params)
    syms = [:business_name, :greeting, :greeting_on, :twitter_on, :phone_on, :email_on, :email, :address, :city, :zip, :state, :website, :website_on]
    syms.each {|s| self.send("#{s.to_s}=", params[s]) if params[s]}
    if params[:code]
      self.code = params[:code]
    end
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
