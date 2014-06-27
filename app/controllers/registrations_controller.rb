class RegistrationsController < Devise::RegistrationsController
  protected

 # def after_sign_in_path_for(user)
 #        if user.role == "customer"
 #          pages_customer_account_path(user) 
 #        elsif user.role == "dealer"
 #          pages_dealer_account_path(user) 
 #        else
 #          root_path
 #        end
 #  end

  def after_update_path_for(user)

    if current_user.role == "dealer" 
      pages_dealer_account_path(user)
    elsif current_user.role == "customer"
      pages_customer_account_path(user)
    end
  end


end 