class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def create?
    @user.editor? || @user.journalist?
  end

  def update?
    @user.editor? || @user.journalist?
  end
end
