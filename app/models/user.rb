class User < ActiveRecord::Base
  
  attr_accessible :email, :password, :password_confirmation

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false },
                    :presence => true

  validates :password, :presence => true,
                       :on => :create,
                       :confirmation => true, # it needs a confirmation
                       :length => { :within => 6..40 }  # the length has to be WITHIN 6-40 characters
  

  has_secure_password
end
