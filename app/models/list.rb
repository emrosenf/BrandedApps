class List < ActiveRecord::Base
  belongs_to :app_instance
  has_many :list_subscribers, :dependent => :destroy
  has_many :subscribers, :through => :list_subscribers
  has_many :notifications, :class_name => "ListNotification", :order => "created_at DESC"
  
  #subscriber.subscribes_to? list
  
  def subscribe(subscriber)
    ls = ListSubscriber.new(:list_id => self.id, :subscriber_id => subscriber.id)
    ls.save
  end
  
  def unsubscribe(subscriber)
    ls = ListSubscriber.where(:list_id => self.id, :subscriber_id => subscriber.id).first
    ls.destroy
  end
  
end
