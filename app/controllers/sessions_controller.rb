class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    session[:logged_in] = true
    session[:username] = request.env['omniauth.auth']['info']['name']
    redirect_to '/'
  end

  def require_login
  end
end
