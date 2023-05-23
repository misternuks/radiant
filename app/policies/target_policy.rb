class TargetPolicy < ApplicationPolicy

  def show?
    record.user == user
  end

  def create?
    record.user == user
  end

  def new?
    create?
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

  def destroy?
  record.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:)
    end
<<<<<<< HEAD
=======
  end

  def show?
    record.user == user
  end

  def create?
    record.user == user
  end

  def new?
    create?
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
>>>>>>> 54d915adf9b85f7534f99d4aad277f4795f17308
  end
end
