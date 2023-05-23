class CampaignPolicy < ApplicationPolicy
  def show?
    record.user == user
  end

  def new?
    user
  end

  def create?
    record.user == user
  end

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:)
    end
  end

end
