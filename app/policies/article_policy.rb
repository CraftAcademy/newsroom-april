class ArticlePolicy < ApplicationPolicy

  def new?
    user.editor? || user.journalist?
  end

  def create?
    new?
  end

  def edit?
    user.editor? || (user.journalist? && record.user == user)
  end

  def update?
    edit?
  end

  def destroy?
    user.editor?
  end
end
