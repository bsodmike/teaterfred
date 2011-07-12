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
  
  def update
    @user = USer.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Gendannelse af kodeord er udløbet"
    elseif @user.update_attributes(params[:user])
    redirect_to root_url, :notice => "Kodeord er gendannet!"
    else
      render :edit
    end
  end

end
