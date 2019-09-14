class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] != '' && params[:name] != nil
      session[:name] = params[:name]
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name) if session[:name]
  end

  def current_user

  end

  private

  def require_login
    return head(:forbidden) unless session.inlcude?(:name)
  end

end
