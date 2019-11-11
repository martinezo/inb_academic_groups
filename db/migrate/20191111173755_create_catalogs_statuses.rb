class CreateCatalogsStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
