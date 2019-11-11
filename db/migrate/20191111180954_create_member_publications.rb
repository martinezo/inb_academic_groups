class CreateMemberPublications < ActiveRecord::Migration[6.0]
  def change
    create_table :member_publications do |t|
      t.references :group_member, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
