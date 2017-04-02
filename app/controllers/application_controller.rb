class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_current_user

  def authenticate_active_admin_user!
   authenticate_user!
   unless current_user.role?(:admin)
      # flash[:alert] = “You are not authorized to access this resource!"
      redirect_to root_path
   	end
	end

  def set_current_user
    @current_user = current_user
  end

	def role?(r)
  	role.include? r.to_s
	end

  def after_sign_in_path_for(resource)
    if resource.role.include?("user")
      user_services_path(resource)
    else
      admin_dashboard_path(resource)
    end
  end
end
