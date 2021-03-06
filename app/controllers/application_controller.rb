class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected 

  def after_sign_in_path_for(user)
        if user.role == "customer"
          pages_customer_account_path(user) 
        elsif user.role == "dealer"
          pages_dealer_account_path(user) 
        else
          root_path
        end
    end

  # def after_update_path_for(user)



  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :phone
    devise_parameter_sanitizer.for(:account_update) << :zip
    devise_parameter_sanitizer.for(:sign_up) << :role
  end
end
