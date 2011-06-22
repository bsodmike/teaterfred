class PagesController < ApplicationController
  before_filter :signed_in_user, :only => [:admin]

  def index
    @page_title = 'Index'
    @news = News.all
  end

  def contact
    @page_title = 'Contact'
  end

  def admin
    @page_title = 'Admin'
  end
end
