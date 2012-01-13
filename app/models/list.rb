class List < ActiveRecord::Base
  belongs_to :app_instance
  has_many :list_subscribers, :dependent => :destroy
  has_many :subscribers, :through => :list_subscribers
  has_many :notifications, :class_name => "ListNotification", :order => "created_at DESC"
end
