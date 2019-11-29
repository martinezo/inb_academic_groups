class GroupMember < ApplicationRecord
  belongs_to :group
  belongs_to :catalogs_member_type, class_name: 'Catalogs::MemberType'
  belongs_to :catalogs_status, class_name: 'Catalogs::Status'
  #todo add fiel for CV file

  validates :firstname, :lastname, presence: true

  def self.search(search)
    if search
      where("translate(lower(lastname),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')"\
            " OR translate(lower(firstname),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')",
            "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  def name
    "#{lastname} #{firstname}"
  end
end
