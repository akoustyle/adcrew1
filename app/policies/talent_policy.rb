class TalentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true # Anyone can view a talent
  end

  def create?
    # user.present? && user == record.user
    record.user == user # only talent creator can create it
  end

  def edit?
    # user.present? && user == record.user
    record.user == user # only talent creator can update it
  end

  def update?
    # user.present? && user == record.user
    record.user == user # only talent creator can update it
    # - talent: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
      # user.present? && user == record.user
    record.user == user # only talent creator can update it
  end
end
