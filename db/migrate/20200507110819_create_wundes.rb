class CreateWundes < ActiveRecord::Migration[6.0]
  def change
    create_table :wundes do |t|
      t.string :bezeichnung
      t.integer :poly_id
      t.string :poly_type

      t.timestamps
    end
  end
end
