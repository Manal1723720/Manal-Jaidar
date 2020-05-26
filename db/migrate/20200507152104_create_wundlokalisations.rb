class CreateWundlokalisations < ActiveRecord::Migration[6.0]
  def change
    create_table :wundlokalisations do |t|
      t.string :lok_partie
      t.date :date
      t.integer :rezidivzahl

      t.timestamps
    end
  end
end
