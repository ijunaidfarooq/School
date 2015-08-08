class SessionsController < ApplicationController

  def new
  end

  def create
  	
  	user = User.find_by_username(params[:username])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
      redirect_to '/fun'
  	else
  		redirect_to '/login'
  	end
  end
end
