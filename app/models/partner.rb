class Partner < ActiveRecord::Base
  validates :image, :presence => true
  validates :link, :presence => true
end
