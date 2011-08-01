class Image < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  
  #attr_accessible :gallery_id, :title, :image
  #validates :title, :presence => true
  #validates :image, :presence => true, :uniqueness => { :case_sensitive => false }
  #validates :gallery_id, :presence => true
  belongs_to :gallery
  mount_uploader :picture, PictureUploader
  
  def to_jq_upload
  {
    "name" => read_attribute(:picture),
    "size" => picture.size,
    "url" => picture.url,
    "delete_url" => image_path(id),
    "delete_type" => "DELETE"
  }
  end
  
end
