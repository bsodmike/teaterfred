class EventsController < InheritedResources::Base

  def index
    @events = Event.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end

  helper_method :index
end
