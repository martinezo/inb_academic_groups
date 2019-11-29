class AddRankToCatalogsMemberTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :catalogs_member_types, :rank, :integer
  end
end
