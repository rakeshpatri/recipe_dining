class Ability
  include CanCan::Ability

  def initialize(user)
    can :access, :rails_admin   # grant access to rails_admin
    can :dashboard
    can :manage, Recipe, :user_id => user.id
    can :manage, CookingStep, CookingStep.belongs_to(user) do |cs|
        cs.recipe.user_id == user.id
    end
    can :manage, GarnishingStep, GarnishingStep.belongs_to(user) do |cs|
        cs.recipe.user_id == user.id
    end
    can :manage, PrePreparationStep, PrePreparationStep.belongs_to(user) do |cs|
        cs.recipe.user_id == user.id
    end
    can :manage, ServingStep, ServingStep.belongs_to(user) do |cs|
        cs.recipe.user_id == user.id
    end
    can :manage, StoringStep, StoringStep.belongs_to(user) do |cs|
        cs.recipe.user_id == user.id
    end
    can :manage, User, :id => user.id
    # CookingStep.accessible_by(@ability).to_sql
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
