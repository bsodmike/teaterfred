class Place < ActiveRecord::Base
  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true, :numericality => true
  validates :email, :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false },
                    :presence => true
  #validates :
end
