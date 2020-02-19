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

  def get_default_attrs
    YAML.safe_load(File.read('config/app_config.yml'))['gm_default_attrs']
  end

  def attrs_includes?(attr)
    get_custom_attrs.include? attr
  end

  def get_custom_attrs
    gm_attrs.split(',')
  end

  def get_full_custom_attrs
    custom_attrs = YAML.load(File.read('config/app_config.yml'))['gm_custom_attrs']
    # Select hash elements (2nd level elemens), merge into a simple hash, select member custom attrs and convert (faltten) it to array
    second_level_custom_attrs = custom_attrs.select{|e| e.is_a? Hash}.inject(:merge).slice(*get_custom_attrs).values.flatten
    first_level_custom_attrs = get_custom_attrs & custom_attrs
    first_level_custom_attrs + second_level_custom_attrs
  end

end
