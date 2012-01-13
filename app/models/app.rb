class App < ActiveRecord::Base
  # An App represents an application available for branding.
  # Apps are owned by developers
  
  belongs_to :user
  has_many :notifications, :dependent => :destroy
  has_many :unsent_notifications, :class_name => "Notification", :conditions => 'sent_at is null'
  has_many :list_notifications, :dependent => :destroy
  has_many :unsent_list_notifications, :class_name => "ListNotification", :conditions => 'sent_at is null'
  
  has_attached_file :canvas, {}.merge(PAPERCLIP_STORAGE_OPTIONS)
  
  def cert
    (Rails.env == 'production' ? apn_prod_cert : apn_dev_cert)
  end
  
  
  def self.send_all_notifications
    apps = App.all
    apps.each do |app|
      app.send_all_notifications
    end
  end
  
  def send_all_notifications
    unsentNoty = unsent_notifications
    unsentListNoty = unsent_list_notifications
    return if (unsentNoty.length == 0 and unsentListNoty.length == 0)
    begin
      APN::Connection.open_for_delivery({:cert => self.cert}) do |conn, sock|
        unsentListNoty.each do |lnoty|
          Rails.logger.info "Sending List Notification ##{lnoty.id}"
          list = lnoty.list
          list.subscribers.find_each do |subscriber|
            begin
              raw = lnoty.message_for_sending(subscriber)
              if raw.length == 0 or raw == ""
                Rails.logger.info "Something is wrong with the message"
              else 
                conn.write(raw)
                Rails.logger.info "Wrote to subscriber #{subscriber.token} with message length: #{raw.length}"  
              end
              Rails.logger.info lnoty.apple_hash
              Rails.logger.info lnoty.to_apple_json
              Rails.logger.info raw.to_s
            rescue => e
              Rails.logger.info "Cannot send list notification ##{lnoty.id}: " + e.message
              return if e.message == "Broken pipe"
            end
          end
          lnoty.sent_at = Time.now
          lnoty.save
        end
        #devs = APN::Device.where(:app_id => app_id)
        #unset = APN::Notification.where(:sent_at => nil).where(:device_id => devs.all.collect {|d| d.id}).order(:device_id, :created_at)
        ##unset.each do |noty|
        #  Rails.logger.debug "Sending notification ##{noty.id}"
        #  begin
        #    conn.write(noty.message_for_sending)
        #  rescue => e
        #    Rails.logger.error "Cannot send notification ##{noty.id}: " + e.message
        #    return if e.message == "Broken pipe"
        #  end
        #  noty.sent_at = Time.now
        #  noty.save
        #end
      end
    rescue Exception => e
      Rails.logger.info "Connection exception: #{e.message}"
    end  
  end
end
