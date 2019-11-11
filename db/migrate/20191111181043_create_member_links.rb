class CreateMemberLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :member_links do |t|
      t.references :group_member, null: false, foreign_key: true
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
