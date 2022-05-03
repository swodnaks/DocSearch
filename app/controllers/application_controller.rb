class ApplicationController < ActionController::Base
  include Pundit
  include Local
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :authenticate_user!

  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

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
