class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl

  @date = #params[:month] ? Time.parse(params[:month]) : Time.now
  @event = Event.all
  
  private

  def signed_in_user
    if current_user.nil?
      redirect_to signin_path, :notice => "Please sign in to access this page"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user, :signed_in_user
end
