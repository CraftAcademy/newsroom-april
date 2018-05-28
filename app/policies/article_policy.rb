class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def new?
    @user.editor? || @user.journalist?
  end

  def create?
    new?
  end

end
