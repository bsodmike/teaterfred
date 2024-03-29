class Partner < ActiveRecord::Base
  validates :image, :presence => true
  validates :link, :presence => true
  
  mount_uploader :image, ImageUploader
end
