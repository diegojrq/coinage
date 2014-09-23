class ApplicationController < ActionController::Base
  
  # fix for CanCan ActiveModel::ForbiddenAttributesError
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  # fix for devise an strong_parameter
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name, :birthday, :email, :email_confirmation, :gender, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:first_name, :last_name, :birthday, :email, :email_confirmation, :gender, :password, :password_confirmation, :current_password)
      end
    end
end
