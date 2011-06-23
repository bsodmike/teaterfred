class ImagesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @images = Image.all
    respond_with(@images)
  end

  def show
    respond_with(@image = Image.find(params[:id]))
  end

  def new
    respond_with(@image = Image.new)
  end

  def edit
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(params[:image])
    flash[:notice] = "Image successfully created" if @image.save
    respond_with(@image)
  end

  def update
    @image = Image.find(params[:id])
    flash[:notice] = "Image updated successfully" if @image.update_attributes(params[:image])
    respond_with(@image)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    respond_with(@image)
  end
end
