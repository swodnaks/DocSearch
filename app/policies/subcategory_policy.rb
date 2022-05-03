class SubcategoryPolicy < ApplicationPolicy
  attr_reader :current_user, :subcategory

  def initialize(current_user, subcategory)
    @current_user = current_user
    @subcategory = subcategory
  end

  def create?
    @current_user.admin?
  end

  def update?
    @current_user.admin? || @current_user.moderator?
  end

  def destroy?
    @current_user.admin?
  end
end
