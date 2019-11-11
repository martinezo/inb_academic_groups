class CreateCatalogsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs_locations do |t|
      t.string :abbr
      t.string :name_es
      t.string :name_en

      t.timestamps
    end
  end
end
