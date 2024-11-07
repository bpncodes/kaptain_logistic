class ApplicationController < ActionController::Base
	  include Pundit::Authorization
	  before_action :authenticate_admin_user!

  # Optionally, you can handle authorization errors
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def pundit_user
    current_admin_user # This should return the current admin user
  end


  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
