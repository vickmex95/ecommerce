class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email,:password, :password_confirmation, :name, :last_name, :age, :state, :city, :street) 
    end
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,:password, :password_confirmation, :name, :last_name, :age, :state, :city, :street])
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end
end
