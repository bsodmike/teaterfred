class PagesController < ApplicationController
  def index
    @page_title = 'Index'
  end

  def contact
    @page_title = 'Contact'
  end
end
