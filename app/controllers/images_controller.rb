class ImagesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  
  respond_to :html, :json, :xml

  def index
    @images = Image.all
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
    else
      render :new, :error => 'Billedet blev ikke oprettet'
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
    redirect_to(images_url)
  end
  
  

end
