class Catalogs::MemberType < ApplicationRecord
  validates :name_en, :name_es, presence: true
  validates :rank, numericality: { greater_than: 0 }

  def self.search(search)
    if search
      where("translate(lower(name_es),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%")
    else
      all
    end
  end

  def attrs_include?(gm_attr)
    gm_attrs_arr.include? gm_attr
  end

  def gm_attrs_arr
    gm_attrs.split(',')
  end
end
