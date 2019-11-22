class Catalogs::PubType < ApplicationRecord
  validates :name_en, :name_es, presence: true

  def self.search(search)
    if search
      where("translate(lower(name_es),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%")
    else
      all
    end
  end
end
