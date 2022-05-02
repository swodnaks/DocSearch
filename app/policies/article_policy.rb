class ArticlePolicy < ApplicationPolicy
  attr_reader :current_user, :article

  def initialize(current_user, article)
    @current_user = current_user
    @article = article
  end

  def index?
    @current_user.admin? || @current_user.moderator?
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
