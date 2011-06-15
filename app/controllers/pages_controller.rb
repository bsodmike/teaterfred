class PagesController < ApplicationController
  def index
    @page_title = 'Index'
    @news = News.all
  end

  def contact
    @page_title = 'Contact'
  end
end
