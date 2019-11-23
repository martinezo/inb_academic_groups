class Catalogs::Location < ApplicationRecord
  has_many :groups
  validates :abbr, :name_en, :name_es, presence: true
  validates :abbr, length: { maximum: 10 }

  def self.search(search)
    if search
      where("abbr LIKE ? OR translate(lower(name_es),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
