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
      devise_parameter_sanitizer.for(:sign_up) << :first_name
      devise_parameter_sanitizer.for(:sign_up) << :last_name
      devise_parameter_sanitizer.for(:sign_up) << :birthday
      devise_parameter_sanitizer.for(:sign_up) << :gender
    end
end
