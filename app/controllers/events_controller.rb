class EventsController < InheritedResources::Base
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @events = Event.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    respond_to do |format|
      format.json  { render :json => @events.to_json(:only => [:id, :title], :methods => [:start]) }
    end  
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])

    if @event.save
      redirect_to(@event, :notice => 'Nyheden blev oprettet')
    else
      render :new, :error => 'Nyheden blev ikke oprettet'
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to(@event, :notice => 'Nyheden blev odpateret')
    else
      render :edit, :error => 'Nyheden blev ikke opdateret'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(events_url)
  end
  
end
