class UsersController < ApplicationController
  before_filter :signed_in_user, :only => [:index, :new, :create]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      cookies[:auth_token] = @user.auth_token
      #session[:user_id] = @user.id
      redirect_to root_url, :notice => "Du er nu oprettet som bruger"
    else
      render :new, :error => 'Brugeren kunne ikke oprettes!'
    end
  end

end
