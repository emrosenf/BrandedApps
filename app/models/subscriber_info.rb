class SubscriberInfo < ActiveRecord::Base
  belongs_to :subscriber
  
  def is_iphone?
    self.platform == 0 and self.token
  end
  
  
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
  
end
