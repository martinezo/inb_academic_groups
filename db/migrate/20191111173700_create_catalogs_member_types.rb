class CreateCatalogsMemberTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs_member_types do |t|
      t.string :name_es
      t.string :name_en
      t.string :gm_attrs, null: false, default: ''

      t.timestamps
    end
  end
end
