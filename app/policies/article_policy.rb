class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user == user.editor? || user.journalist?
  end

  def create?
    new?
  end

end
