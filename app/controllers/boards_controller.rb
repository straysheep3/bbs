class BoardsController < ApplicationController
  def index
    @rooms = Room.all
    @posts = Post.all
  end

  def new
    @room = Room.new
    @post = Post.new
  end

  def show
    @room = Room.find(params[:id])
    @posts = Post.all
    render :layout => "room"
  end

  def create
    @room = Room.new(params_board)
    @room.save
    redirect_to "/boards"
  end


  private
    def params_board
      params.permit(:title, :description)
    end
end
