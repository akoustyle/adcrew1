class CampaignPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    user.present? && user == record.user

  end

  def edit?
    user.present? && user == record.user

  end

  def update?
    user.present? && user == record.user

    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    user.present? && user == record.user

  end

end
