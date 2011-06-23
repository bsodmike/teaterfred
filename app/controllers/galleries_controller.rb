class GalleriesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json


  def index
    respond_with(@galleries = Gallery.all)
  end

  def show
    @gallery = Gallery.find(params[:id])
    respond_with(@gallery)
  end

  def new
    respond_with(@gallery = Gallery.new)
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    flash[:notice] = "Gallery successfully created" if @gallery.save
    respond_with(@gallery)
  end

  def update
    @gallery = Gallery.find(params[:id])
    @gallery.update_attributes(params[:gallery])
    respond_with(@gallery)
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    respond_with(@gallery)
  end
end
