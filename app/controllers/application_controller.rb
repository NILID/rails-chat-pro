class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    unless current_user
      flash[:alert] = t('devise.failure.unauthenticated')
      session[:requested_url] = request.url
      redirect_to new_user_session_path
    else
      raise
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
  end
end
