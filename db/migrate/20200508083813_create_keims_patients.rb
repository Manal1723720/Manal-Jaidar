class CreateKeimsPatients < ActiveRecord::Migration[6.0]
  def change
    create_table :keims_patients do |t|
      t.references :keim, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
