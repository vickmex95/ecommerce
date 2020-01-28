class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.is_admin?
      can :manage, Category #CRUD
    elsif user.is_normal_user?
      can :read, Category
    end
  end
end
