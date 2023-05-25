class ActivePlayerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def new?
    user
  end

  def create?
    record.user == user
  end

  def edit?
    update?
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
