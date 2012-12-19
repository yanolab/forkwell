class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user, :user_signed_in?

  def current_user
    @current_user ||= User.find_by_id(session[:current_user])
  end

  def user_signed_in?
    !!current_user
  end
end
