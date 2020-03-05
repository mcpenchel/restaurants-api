class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order(id: :asc)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    update?
  end

end
