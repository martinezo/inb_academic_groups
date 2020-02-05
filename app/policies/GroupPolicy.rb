class GroupPolicy < ApplicationPolicy
  def index?
    @user.groups.size > 0 or @user.super_user?
  end

  def show?
    @user.admin_group? record.id
  end

  def edit?
    @user.super_user
  end

  def update?
    @user.super_user
  end

  def new?
    @user.super_user
  end

  def create?
    @user.super_user
  end

  def delete?
    @user.super_user
  end

  def destroy?
    @user.super_user
  end

end