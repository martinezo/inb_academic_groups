class Admin::UserGroup < ApplicationRecord
  belongs_to :admin_user
  belongs_to :group
end
