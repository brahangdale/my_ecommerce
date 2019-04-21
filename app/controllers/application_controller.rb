class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_order
    Order.find(session[:order_id]) if session[:order_id].present?
  end
  protected

 	def after_sign_in_path_for(user)
 		if user.admin?
 			admin_path
 		else
    	request.env['omniauth.origin'] || stored_location_for(user) || root_path
    end
  end

  def admin_only!
		if !current_user.admin?
			# flash.now[:error] = "anouthorize"
			redirect_to root_path
		end
	end
end
