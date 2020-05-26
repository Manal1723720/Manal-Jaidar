class CreateDokumentations < ActiveRecord::Migration[6.0]
  def change
    create_table :dokumentations do |t|
      t.integer :hasManyDokus_id
      t.string :hasManyDokus_type

      t.timestamps
    end
  end
end
