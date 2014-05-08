class SessionsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      flash[:error] = "Invalid Login"
      render :new
    end
  end

end
