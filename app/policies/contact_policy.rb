class ContactPolicy < ApplicationPolicy
  # class Scope < Scope
  #   # NOTE: Be explicit about which records you allow access to!
  #   def resolve
  #     scope.all
  #   end
  # end

  # def index?
  #   true
  # end

  # def show?
  #   true # Anyone can view a contact
  # end

  def new?
    true
  end

  def create?
    true
  end
end
