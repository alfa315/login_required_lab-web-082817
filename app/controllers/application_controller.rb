class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user

  def current_user
    session[:name] ||= nil
  end

  protect_from_forgery with: :exception
end
