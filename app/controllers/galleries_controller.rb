class GalleriesController < InheritedResources::Base
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

end
