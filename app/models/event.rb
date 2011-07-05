class Event < ActiveRecord::Base

  def start
    published_on
  end

end
