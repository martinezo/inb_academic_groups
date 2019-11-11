class CreateCatalogsMemberTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs_member_types do |t|
      t.string :name_es
      t.string :name_en

      t.timestamps
    end
  end
end
