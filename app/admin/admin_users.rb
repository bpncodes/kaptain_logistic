ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :phone_number, :role

  controller do
    before_action :authenticate_admin_user!
  end


  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :role
    column :phone_number
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :role
      f.input :phone_number
            # Only show password fields for new users or when changing the password
      if f.object.new_record? || f.object.password.present?
        f.input :password
        f.input :password_confirmation
      end

    end
    f.actions
  end

end
