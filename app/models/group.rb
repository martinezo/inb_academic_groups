class Group < ApplicationRecord
  validates :name_en, :name_es, :catalogs_location_id, :catalogs_department_id, presence: true
  belongs_to :catalogs_department, :class_name => 'Catalogs::Department'
  belongs_to :catalogs_location, :class_name => 'Catalogs::Location'
  has_many :group_members

  scope :from_department, -> (department_id) {where("catalogs_department_id = ?", department_id) }

  def self.search(search)
    if search
      where("translate(lower(name_es),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%")
    else
      all
    end
  end

end
