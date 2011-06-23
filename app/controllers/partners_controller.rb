class PartnersController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    respond_with(@partners = Partner.all)
  end

  def show
    respond_with(@partner = Partner.find(params[:id]))
  end

  def new
    respond_with(@partner = Partner.new)
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def create
    @partner = Partner.new(params[:partner])

    respond_to do |format|
      if @partner.save
        format.html { redirect_to @partner, notice: 'Partner was successfully created.' }
        format.json { render json: @partner, status: :created, location: @partner }
      else
        format.html { render action: "new" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @partner = Partner.find(params[:id])

    respond_to do |format|
      if @partner.update_attributes(params[:partner])
        format.html { redirect_to @partner, notice: 'Partner was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy
    respond_with(@partner)
  end
end
