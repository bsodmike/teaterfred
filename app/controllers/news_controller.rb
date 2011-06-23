class NewsController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html, :xml, :json


  def index
    respond_with(@news = News.all)
  end

  def show
    respond_with(@news = News.find(params[:id]))
  end

  def new
    respond_with(@news = News.new)
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(params[:news])


    respond_with(@news) do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'News was successfully created.' }
        format.json { render json: @news, status: :created, location: @news }
      else
        format.html { render action: "new" }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @news = News.find(params[:id])

    respond_with(@news) do |format|
      if @news.update_attributes(params[:news])
        format.html { redirect_to @news, notice: 'News was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    respond_with(@news)
  end
end
