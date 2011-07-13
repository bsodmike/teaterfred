class BoardsController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def edit
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(params[:board])
    if @board.save
      redirect_to(@board, :notice => 'Bestyrelsesmedlem blev oprettet')
    else
      render :new, :error => 'Bestyrelsesmedlem blev ikke oprettet'
    end
  end

  def update
    @board = Board.find(params[:id])
    if @board.update_attributes(params[:board])
      redirect_to(@board, :notice => 'Bestyrelsesmedlem blev opdateret')
    else
      render :edit, :error => 'Bestyrelsesmedlem blev ikke opdateret'
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to(boards_url)
  end
end
