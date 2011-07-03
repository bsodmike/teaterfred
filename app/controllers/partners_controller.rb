class PartnersController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    respond_with(@partners = Partner.all)
  end

end
