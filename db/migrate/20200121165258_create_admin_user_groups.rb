class CreateAdminUserGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_user_groups do |t|
      t.references :user, references: :admin_users, null: false, foreign_key: {to_table: :admin_users}
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
