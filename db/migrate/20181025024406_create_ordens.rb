class CreateOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :ordens do |t|
      t.integer :unidad
      t.references :cliente, foreign_key: true
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
