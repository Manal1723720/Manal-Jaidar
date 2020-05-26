class CreateAllergiesPatients < ActiveRecord::Migration[6.0]
  def change
    create_table :allergies_patients do |t|
      t.references :allergy, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
