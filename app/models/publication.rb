class Publication < ApplicationRecord
  belongs_to :catalogs_pub_type, :class_name => 'Catalogs::PubType'
end
