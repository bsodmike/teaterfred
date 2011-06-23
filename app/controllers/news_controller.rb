class NewsController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @news = News.all
  end
end
