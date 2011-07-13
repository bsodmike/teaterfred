class EventsController < InheritedResources::Base
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    respond_to do |format|
      format.json  { render :json => @events.to_json(:only => [:id, :title], :methods => [:start]) }
    end  
  end
  
end
