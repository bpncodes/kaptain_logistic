class AddOtpToAdminUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :admin_users, :otp_code, :string
    add_column :admin_users, :otp_generated_at, :datetime
  end
end
