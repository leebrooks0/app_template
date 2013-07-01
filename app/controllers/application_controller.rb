class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login
  after_action :verify_authorized, :except => :index
  after_action :verify_policy_scoped, :only => :index
  rescue_from Pundit::NotAuthorizedError, with: :not_authorized

  protected

  def not_authenticated
    redirect_to sign_in_path, :alert => 'Please login first.'
  end

  def not_authorized
    redirect_to :back || root_path, alert: 'You are not authorized to perform this action.'
  end
end
