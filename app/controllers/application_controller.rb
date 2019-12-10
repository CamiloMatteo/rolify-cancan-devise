# frozen_string_literal: true

# Description ApplicationController Class
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email password])
    devise_parameter_sanitizer.permit(
      :account_update, keys: %i[username email passowrd current_password]
    )
  end
end
