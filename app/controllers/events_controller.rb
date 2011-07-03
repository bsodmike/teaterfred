class EventsController < InheritedResources::Base

  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end
end
