class PlayerPolicy < ApplicationPolicy

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
    record.user == user
  end

  def destroy?
    user

  end
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:)
    end
  end
end
