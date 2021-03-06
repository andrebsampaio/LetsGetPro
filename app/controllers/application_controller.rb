class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_filter :require_login, :except => [:new,:create]

  private

  def require_login
    redirect_to signin_url and return unless signed_in?
  end


end
