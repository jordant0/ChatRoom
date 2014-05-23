class SessionsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      User.find_or_create_by(name: session[:name])
      if params[:room_id].present?
        redirect_to room_path(params[:room_id])
      else
        redirect_to rooms_path
      end
    else
      flash[:error] = "Invalid Login"
      render :new
    end
  end

  def destroy
    params[:name] = nil
    session[:name] = nil
    redirect_to_root_path
  end

end
