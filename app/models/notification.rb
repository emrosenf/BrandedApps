class Notification < ActiveRecord::Base
  belongs_to :app_instance
  belongs_to :subscriber
end
