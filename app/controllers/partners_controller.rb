class PartnersController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @partners = Partner.all
  end

end
