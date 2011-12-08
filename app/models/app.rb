class App < ActiveRecord::Base
  # An App represents an application available for branding.
  # Apps are owned by developers
  
  belongs_to :user
  
  has_attached_file :canvas, {}.merge(PAPERCLIP_STORAGE_OPTIONS)
end
