class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :vorname
      t.string :nachname
      t.date :geburtsdatum

      t.timestamps
    end
  end
end
