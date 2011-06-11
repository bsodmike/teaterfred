class Gallery < ActiveRecord::Base
  has_many :images, :source => 'gallery_id'

end
