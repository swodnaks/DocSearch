class CategoryPolicy < ApplicationPolicy
  attr_reader :current_user, :category

  def initialize(current_user, category)
    @current_user = current_user
    @category = category
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
