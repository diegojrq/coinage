class ApplicationController < ActionController::Base
  
  # fix for CanCan ActiveModel::ForbiddenAttributesError
  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
end
