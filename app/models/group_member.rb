class GroupMember < ApplicationRecord
  belongs_to :group
  belongs_to :catalogs_member_type, :class_name => 'Catalogs::MemberType'
  belongs_to :catalogs_status, :class_name => 'Catalogs::Status'
  #todo add fiel for CV file
end
