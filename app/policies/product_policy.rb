class ProductPolicy < ApplicationPolicy
  # Admin can create, update, and view products
  def create?
    user.admin?
  end

  # Admin and editor can update products
  def update?
    user.admin? || user.editor?
  end

  # Anyone can view products
  def show?
    true  # View is allowed for all roles
  end

  # Optionally, you can add a delete permission if needed
  def destroy?
    user.admin?  # Only admins can delete
  end

  # Define index permission based on roles
  def index?
    user.admin? || user.editor? || user.viewer?
  end

  # Scope defines which records the user can access
  class Scope < ApplicationPolicy::Scope
    def resolve
      # Depending on the user's role, you can scope the records accordingly
      if user.admin?
        scope.all  # Admins can see all products
      elsif user.editor?
        scope.all  # Editors can see all products (customize if needed)
      else
        scope.where(public: true)  # Example: viewers can only see public products
      end
    end
  end
end
