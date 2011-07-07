class UsersController < ApplicationController
  before_filter :current_user

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Du er nu oprettet som bruger"
    else
      render :new, :error => 'Brugeren kunne ikke oprettes!'
    end
  end

end
