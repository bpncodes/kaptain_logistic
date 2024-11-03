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

  private

  def set_default_role
    self.role ||= :viewer
  end

end
