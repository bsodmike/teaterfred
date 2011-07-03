class NewsItem < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
