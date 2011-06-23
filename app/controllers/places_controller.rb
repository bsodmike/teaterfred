class PlacesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    respond_with(@places = Place.all)
  end

  def show
    respond_with(@place = Place.find(params[:id]))
  end

  def new
    respond_with(@place = Place.new)
  end

  def edit
    @place = Place.find(params[:id])
  end

  def create
    @place = Place.new(params[:place])

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render json: @place, status: :created, location: @place }
      else
        format.html { render action: "new" }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @place = Place.find(params[:id])

    respond_to do |format|
      if @place.update_attributes(params[:place])
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    respond_to do |format|
      format.html { redirect_to places_url }
      format.json { head :ok }
    end
  end
end
