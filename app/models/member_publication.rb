class MemberPublication < ApplicationRecord
  belongs_to :group_member
  belongs_to :publication
end
