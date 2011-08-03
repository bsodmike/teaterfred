class ImagesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  #before_filter :find_property
  #before_filter :find_or_build_photo
  skip_before_filter :verify_authenticity_token
  
  respond_to :html, :json, :xml

  def index
    @images = Image.all
    #render :json => @images.collect { |i| i.to_jq_upload }.to_json
  end
  
  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
    @gallery = Gallery.all
    respond_with(@image, @gallery)
  end
  
  def edit
    @image = Image.find(params[:id])
  end

  def create    
    @image = Image.new(params[:image])

    if @image.save
      redirect_to(@image, :notice => 'Billedet blev oprettet')
      #render :json => [ @image.to_jq_upload].to_json
    else
      render :new, :error => 'Billedet blev ikke oprettet'
      #render :json => [@image.to_jq_upload.merge({:error => "custom_failure"})].to_json
    end
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to(@image, :notice => 'Billedet blev odpateret')
    else
      render :edit, :error => 'Billedet blev ikke opdateret'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    #render :json => true
    format.js
    redirect_to(images_url)
  end
  
  

end
