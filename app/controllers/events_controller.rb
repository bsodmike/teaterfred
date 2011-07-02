class EventsController < InheritedResources::Base

  def index
    @events = Event.all
    @date = params[:month] ? Time.parse(params[:month]) : Time.now
  end
end
