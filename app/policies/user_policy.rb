class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :subcategory

  def initialize(current_user, users)
    @current_user = current_user
    @users = users
  end

  def index?
    @current_user.admin?
  end

  def edit?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    @current_user.admin?
  end
end
