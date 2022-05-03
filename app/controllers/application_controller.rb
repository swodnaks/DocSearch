class ApplicationController < ActionController::Base
  include Pundit
  include Local
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :authenticate_user!

  private

    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    protect_from_forgery with: :exception

   before_action :configure_permitted_parameters, if: :devise_controller?
    protected

    def configure_permitted_parameters
 attributes = [:first_name, :last_name, :email]
 devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
 devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end
end
