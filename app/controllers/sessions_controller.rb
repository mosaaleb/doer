class SessionsController < ApplicationController
  def new

  end
  def create
    session[:useremail] = params[:session][:email]
    redirect_to root_path
  end
end