class ApplicationController < ActionController::Base
include Pundit
before_action :configure_permitted_parameters, if: :devise_controller?
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password])
    end

private

    def user_not_authorized(exception)
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to '/'
    end

end
