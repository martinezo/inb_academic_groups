class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name_es
      t.string :name_en
      t.string :link

      t.timestamps
    end
  end
end
