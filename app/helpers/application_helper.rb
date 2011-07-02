module ApplicationHelper
  #@date = params[:month] ? Date.parse(params[:month]) : Date.today
  def date
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end
  #@date = params[:month] ? Date.parse(params[:month]) : Date.
  def events
    Event.all
  end
end
