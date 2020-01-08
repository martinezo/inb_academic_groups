class Publication < ApplicationRecord
  belongs_to :catalogs_pub_type, :class_name => 'Catalogs::PubType'
  validates :title, :pub_date, presence: true
end
