class AppInstanceSubscriber < ActiveRecord::Base
  # Represents the association of a subscriber (patron of one of our customers)
  # who subscribes to updates from a particular application
  belongs_to :app_instance
  belongs_to :subscriber
end
