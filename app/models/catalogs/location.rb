class Catalogs::Location < ApplicationRecord
  validates :abbr, :name_en, :name_es, presence: true

  def self.search(search)
    if search
      where("abbr LIKE ? OR translate(lower(name_es),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
