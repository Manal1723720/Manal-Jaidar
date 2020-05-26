class CreateFotos < ActiveRecord::Migration[6.0]
  def change
    create_table :fotos do |t|
      t.string :foto_name
      t.boolean :zustimmen
      t.datetime :zeitstempel
      t.integer :hasManyFotos_id
      t.string :hasManyFotos_type

      t.timestamps
    end
  end
end
