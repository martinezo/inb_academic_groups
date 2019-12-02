class CreateGroupMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_members do |t|
      t.references :group, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :photo_file_name
      t.string :email
      t.string :phone_numbers
      t.text :academic_career_es
      t.text :academic_career_en
      t.text :research_interests_es
      t.text :research_interests_en
      t.string :photo_res_file_name
      t.string :research_photo_descr_es
      t.string :research_photo_descr_en
      t.references :catalogs_member_type, null: false, foreign_key: true
      t.references :catalogs_status, null: false, foreign_key: true, default: 1
      t.string :current_position_es
      t.string :current_position_en
      t.string :current_workplace

      t.timestamps
    end
  end
end
