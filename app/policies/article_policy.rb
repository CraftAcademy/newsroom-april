class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.editor? || user.journalist?
  end

  def update?
    user.editor? || (user.journalist? && record.user == user)
  end

  def destroy?
    user.editor?
  end
end
