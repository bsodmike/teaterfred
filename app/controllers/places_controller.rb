class PlacesController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
end
