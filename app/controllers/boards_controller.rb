class BoardsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
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
