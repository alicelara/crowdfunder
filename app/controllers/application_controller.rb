class ApplicationController < ActionController::Base
  protect_from_forgery

	# helper_method :current_user

  # private
  
  def not_authenticated
 	 redirect_to new_session_path, :alert => "Please login first."
	end
end
