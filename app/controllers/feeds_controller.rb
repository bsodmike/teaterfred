class FeedsController < ApplicationController
  def events
    @events = Event.all
    respond_to do |format|
      format.json  { render :json => @events.to_json(:only => [:id, :title, :start]) }
    end
  end

end
