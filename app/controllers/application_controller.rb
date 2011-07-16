require 'mime/types'
class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
  
  helper_method :current_user, :signed_in_user
  
  private
    def signed_in_user
      if current_user.nil?
        redirect_to signin_path, :notice => "Log in for at se denne side"
      end
    end

    def current_user
      @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    end

end
