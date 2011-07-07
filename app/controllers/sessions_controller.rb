class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Du er nu blevet logget ind"
    else
      render "new", :error => 'Forkert email eller kodeord'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :alert => "Du er nu blevet logget ud"
  end

end
