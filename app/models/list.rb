class List < ActiveRecord::Base
  belongs_to :app_instance
  has_many :list_subscribers
  has_many :subscribers, :through => :list_subscribers
end
