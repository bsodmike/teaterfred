class Image < ActiveRecord::Base
  attr_accessible :gallery_id, :title, :image
  belongs_to :gallery
  mount_uploader :image, ImageUploader
  
end
