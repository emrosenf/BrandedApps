class Subscriber < ActiveRecord::Base
  # A subscriber is a patron of one of our customers
  # who downloads a branded app and then may choose to 
  # receive push notifications
  
  validates_format_of :token, :with => /^[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}\s[a-f0-9]{8}$/
  
  # Stores the token (Apple's device ID) of the iPhone (device).
  #
  # If the token comes in like this:
  # '<5gxadhy6 6zmtxfl6 5zpbcxmw ez3w7ksf qscpr55t trknkzap 7yyt45sc g6jrw7qz>'
  # Then the '<' and '>' will be stripped off.
  def token=(token)
    res = token.scan(/\<(.+)\>/).first
    unless res.nil? || res.empty?
      token = res.first
    end
    write_attribute('token', token)
  end
  
  # Returns the hexadecimal representation of the device's token.
  def to_hexa
    [token.delete(' ')].pack('H*')
  end
  
  
  def subscribes_to?(list_or_app)
    if list_or_app.is_a? List
      ListSubscriber.where(:list_id => list_or_app.id, :subscriber_id => self.id).length > 0
    elsif list_or_app.is_a? AppInstance
      AppInstanceSubscriber.where(:app_instance_id => list_or_app.id, :subscriber_id => self.id).length > 0
    end
  end
  
  def subscribe_to_list(list)
    unless subscribes_to? list
      ListSubscriber.create(:list_id => list.id, :subscriber_id => self.id)
    end
  end
  
  def subscribe_to_instance(instance)
    unless subscribes_to? instance
      AppInstanceSubscriber.create(:app_instance_id => instance.id, :subscriber_id => self.id)
    end
  end
  
end
