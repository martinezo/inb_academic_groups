class Admin::UserGroup < ApplicationRecord
  belongs_to :user, class_name: 'Admin::User'
  belongs_to :group
end
