# encoding: UTF-8

class Gallery < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :place, :presence => true
  has_many :images

end
