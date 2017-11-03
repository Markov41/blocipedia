class WikiPolicy < ApplicationPolicy
  attr_reader :user, :wiki

  def initialize(user, wiki)
    @user = user
    @wiki = wiki
  end
  
  def after_initialize 
    return unless new_record?
    self.status = ACTIVE
  end

  def update?
    user.present? || user.admin?
  end
  
  def create?
    user.premium? || user.admin?
  end
  
  
  def destroy?
    user.admin? || user.id == wiki.user_id
  end
  
end

