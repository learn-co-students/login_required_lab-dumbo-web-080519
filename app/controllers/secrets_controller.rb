class SecretsController < ApplicationController
  before_action :require_login

  def show
    if require_login == false
      redirect_to login_path
    end
  end

  private

  def require_login
    if session[:name]
      true
    else
      false
    end
  end

end
