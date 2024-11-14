class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  # Define roles as an enum
  enum role: { admin: 0, editor: 1, viewer: 2 }

  # You can set a default role for new users if desired
  after_initialize :set_default_role, if: :new_record?

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "id_value", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end

  def admin?
    role == "admin"
  end

  def manager?
    role == "manager"
  end

  def viewer?
    role == "viewer" 
  end


  def generate_otp!
    # Generates a SHA-256 hash of the current time (as a string) and returns the first 11 characters.
    self.otp_code = Digest::SHA256.hexdigest(Time.now.to_s)[0..10]  # Generate a random OTP
    self.otp_generated_at = Time.current
    save!
  end

  def otp_valid?(input_code)
    otp_code == input_code && otp_generated_at > 10.minutes.ago  # OTP expires in 10 minutes
  end

  def send_otp
    Rails.logger.info("SMS to #{self.phone_number}: #{self.otp_code}")
    VonageSmsService.new(self.phone_number, self.otp_code).send_sms
  end


  private

  def set_default_role
    self.role ||= :viewer
  end

end
