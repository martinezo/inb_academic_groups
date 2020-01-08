class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.text :title
      t.date :pub_date
      t.string :link
      t.references :catalogs_pub_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
