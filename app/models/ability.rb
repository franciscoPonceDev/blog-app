# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elseif user.is? :default
      can :manage, Post, user: user.id
      can :manage, Comment, user: user.id
      can :manage, Like, user: user.id
    else
      can :read, :all
    end
  end
end
