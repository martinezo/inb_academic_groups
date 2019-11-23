class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name_es
      t.string :name_en
      t.references :catalogs_location, null: false, foreign_key: true
      t.references :catalogs_department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
