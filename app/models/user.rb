# encoding: UTF-8

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
  before_create { generate_token(:auth_token) }

  has_secure_password
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
