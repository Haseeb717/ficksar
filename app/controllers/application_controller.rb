class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name, :email, :password, :password_confirmation,:specialist,:age_limit,:experience,business_attributes: [ :id, :name, :address,:city,:postal_code,:province, :_destroy ] )}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name, :email, :password, :password_confirmation,:specialist,:age_limit,:experience,business_attributes: [ :id, :name, :address,:city,:postal_code,:province, :_destroy ] )}
  end
end
