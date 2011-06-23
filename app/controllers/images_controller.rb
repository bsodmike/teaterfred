class ImagesController < InheritedResources::Base
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @image = Image.new
    @gallery = Gallery.all
    respond_with(@image, @gallery)
  end

end
