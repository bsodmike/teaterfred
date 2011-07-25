# encoding: UTF-8

class NewsItem < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  
  mount_uploader :image, ImageUploader
end
