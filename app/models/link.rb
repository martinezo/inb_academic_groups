class Link < ApplicationRecord
  validates :link, :name_es, :name_en, presence: true
end
