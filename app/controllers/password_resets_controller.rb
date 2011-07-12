class PasswordResetsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to root_url, :notice => "Du modtager en email med gendannelse af kodeord"
  end
  
  def edit
    @user = USer.find_by_password_reset_token!(params[:id])
  end

end
