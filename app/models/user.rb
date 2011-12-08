class User < ActiveRecord::Base
  # User model represents someone who can log into the site
  
  has_many :app_instances
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email, :on => :create
  validates_presence_of :password, :on => :create
  

end
