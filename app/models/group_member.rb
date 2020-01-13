class GroupMember < ApplicationRecord
  has_one_attached :avatar
  has_one_attached :research_photo
  has_one_attached :resume

  belongs_to :group
  belongs_to :catalogs_member_type, class_name: 'Catalogs::MemberType'
  belongs_to :catalogs_status, class_name: 'Catalogs::Status'
  belongs_to :catalogs_level, :class_name => 'Catalogs::Level'

  has_many :member_links
  has_many :links, through: :member_links, dependent: :destroy
  accepts_nested_attributes_for :links, allow_destroy: true, reject_if: :all_blank

  has_many :member_publications
  has_many :publications, through: :member_publications, dependent: :destroy
  accepts_nested_attributes_for :publications, allow_destroy: true, reject_if: :all_blank

  #todo validate text fields (length)
  #todo remove unnecessary fields

  validates :firstname, :lastname, presence: true

  scope :from_group, -> (group_id) {where("group_id = ?", group_id) }

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
