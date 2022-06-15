class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.is? :default
      can :read, :all
      can :create, Comment
      can :destroy, Comment, user_id: user.id
      can :manage, Post, user_id: user.id
      can :manage, Like, user_id: user.id
    else
      can :read, :all
    end
  end
end
