class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    @room = Room.new
    @current_user = current_user
  end

  def show
    @current_user = current_user
  	@room = Room.find(params[:id])
  	@messages = @room.messages
  	@message = Message.new
  	@users = User.all
  end

	def new
		@room = Room.new
	end

  def edit
  end

  def update
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to rooms_path, notice: 'Room was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    Room.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to rooms_path, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_user
    @user = User.find(name: current_user.name)
    @user.destroy

  end

  private
    def room_params
      params.require(:room).permit(:name)
    end

end
