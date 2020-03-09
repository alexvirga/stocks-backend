class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

  def login!
    cookies[:user_id] = @user.id
  end

  def logged_in?
    !!cookies[:user_id]
  end

  def current_user
    @current_user ||= User.find(cookies[:user_id]) if cookies[:user_id]
  end

  def authorized_user?
    @user == current_user
  end

  def logout!
    cookies.clear
  end
end
