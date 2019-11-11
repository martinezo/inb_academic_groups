class Group < ApplicationRecord
  belongs_to :catalogs_location, :class_name => 'Catalogs::Location'
  has_many :group_members
end
