class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.string :category
      t.text :description
      t.boolean :agreement

      t.timestamps
    end
  end
end
