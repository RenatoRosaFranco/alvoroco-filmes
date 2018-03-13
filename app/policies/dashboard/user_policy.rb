class Dashboard::UserPolicy < ApplicationPolicy
  
  def initialize(user, model)
  	@user = user 
  	@model = model 
  end

  def admin? 
  	@user.admin?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
