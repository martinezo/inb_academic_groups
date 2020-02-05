class GroupMemberPolicy < ApplicationPolicy
  def create?
    @user.super_user || (@user.admin_group? record.group_id)
  end
end