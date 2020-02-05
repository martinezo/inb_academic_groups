class Admin::User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :timeoutable

  validates :name, :login, :email, presence: true

  has_many :admin_user_groups, :class_name => 'Admin::UserGroup'
  has_many :groups, through: :admin_user_groups
  def self.search(search)
    if search
      where("translate(lower(name),'áéíóúàèìòù', 'aeiouaeiou') LIKE translate(lower(?),'áéíóúàèìòù', 'aeiouaeiou')", "%#{search}%")
    else
      all
    end
  end

  def admin_group?(group_id)
    groups.where(id: group_id).size >= 1 || super_user
  end

  def admin_groups
    if super_user
      Group.pluck(:id)
    else
      groups.pluck(:id)
    end
  end

  def admin_groups_collection
    if super_user
      Group.all
    else
      groups
    end
  end
end
