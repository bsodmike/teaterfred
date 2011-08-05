class Image < ActiveRecord::Base
  
  #attr_accessible :gallery_id, :title, :image
  #validates :title, :presence => true
  validates :image, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :gallery_id, :presence => true
  belongs_to :gallery
  mount_uploader :image, ImageUploader
  
  
end
