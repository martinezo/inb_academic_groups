class Catalogs::DepartmentPolicy < ApplicationPolicy
  def index?
    @user.super_user
  end

  def show?
    @user.super_user
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