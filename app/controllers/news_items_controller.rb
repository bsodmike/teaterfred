class NewsItemsController < ApplicationController
  
  def index
    @news_items = NewsItem.all
  end
  
  def show
    @news_item = NewsItem.find(params[:id])
  end
  
  def new
    @news_item = NewsItem.new
  end

  def edit
    @news_item = NewsItem.find(params[:id])
  end

  def create
    @news_item = NewsItem.new(params[:news_item])
    
    #@news_itemRedCloth.new(params[:c]).to_html

    if @news_item.save
      redirect_to(@news_item, :notice => 'Nyheden blev oprettet')
    else
      render :new, :error => 'Nyheden blev ikke oprettet'
    end
  end

  def update
    @news_item = NewsItem.find(params[:id])
    if @news_item.update_attributes(params[:news_item])
      redirect_to(@news_item, :notice => 'Nyheden blev opdateret')
    else
      render :edit, :error => 'Nyheden blev ikke opdateret'
    end
  end

  def destroy
    @news_item = NewsItem.find(params[:id])
    @news_item.destroy
    redirect_to(news_items_url)
  end
  
end
