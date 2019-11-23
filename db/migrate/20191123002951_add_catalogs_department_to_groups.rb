class AddCatalogsDepartmentToGroups < ActiveRecord::Migration[6.0]
  def change
    add_reference :groups, :catalogs_department, null: false, foreign_key: true
  end
end
