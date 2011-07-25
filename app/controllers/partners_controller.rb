class PartnersController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @partners = Partner.all
  end
  
  def show
    @partner = Partner.find(params[:id])
  end
  
  def new
    @partner = Partner.new
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def create
    @partner = Partner.new(params[:partner])

    if @partner.save
      redirect_to(@partner, :notice => 'Samarbejdspartneren blev oprettet')
    else
      render :new, :error => 'Samarbejdspartneren blev ikke oprettet'
    end
  end

  def update
    @partner = Partner.find(params[:id])
    if @partner.update_attributes(params[:partner])
      redirect_to(@partner, :notice => 'Samarbejdspartneren blev opdateret')
    else
      render :edit, :error => 'Samarbejdspartneren blev ikke opdateret'
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy
    redirect_to(partners_url)
  end

end
