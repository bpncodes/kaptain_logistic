class AdminUsers::SessionsController < Devise::SessionsController
  
  # POST /login
  def create
    super do |user|
      if user.persisted?
        user.generate_otp!  # Generate and save OTP code
        user.send_otp       # Send OTP to user (e.g., via SMS or email)
        sign_out(user)      # Temporarily sign out to enforce OTP verification
        session[:pending_user_id] = user.id  # Store user ID in session for OTP verification
        redirect_to verify_otp_path          # Redirect to OTP verification page
        return
      end
    end
  end

  # GET /verify_otp. Display otp form to the user.
  def verify_otp
  end

  def verify_otp_code
    user = AdminUser.find_by(id: session[:pending_user_id])
    if user && user.otp_valid?(params[:otp_code])
      sign_in(user)  # Re-sign in user if OTP is valid
      session.delete(:pending_user_id)  # Clear pending user session
      redirect_to admin_root_path         # Redirect to dashboard or desired page
    else
      flash[:alert] = "Invalid OTP. Please try again."
      redirect_to new_admin_user_session_path  # Redirect to login on failure
    end
  end

end