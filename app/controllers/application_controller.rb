class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
  	resource = controller_name.singularize.to_sym
  	method = "#{resource}_params"
  	params[resource] &&= send(method) if respond_to?(method, true)

  	if devise_controller?
  		devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(*User::ACCESSABLE_ATTRS) }
  		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(*User::ACCESSABLE_ATTRS) }
  		devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(*User::ACCESSABLE_ATTRS) }
  	end
  end

  def require_user
    if current_user.blank?
      respond_to do |format|
        format.html {
          authenticate_user!
	}
      end
    end
  end
end
