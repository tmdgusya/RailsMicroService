class UserController < ApplicationController

  def initialize
    @user_service = UserServices.new
  end

  def login

    login_request_dto = {
      :email => params[:email],
      :password => params[:password]
    }

    render :json => {:user => @user_service.login(login_request_dto)}
  end

  def join

    login_request_dto = {
      :email => params[:email],
      :password => params[:password]
    }

    render :json => {:user => @user_service.join(login_request_dto)}
  end

end