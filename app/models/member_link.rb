class MemberLink < ApplicationRecord
  belongs_to :group_member
  belongs_to :link
end
