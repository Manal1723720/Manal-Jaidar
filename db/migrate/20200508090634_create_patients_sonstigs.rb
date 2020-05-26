class CreatePatientsSonstigs < ActiveRecord::Migration[6.0]
  def change
    create_table :patients_sonstigs do |t|
      t.references :sonstig 
      t.references :patient

      t.timestamps
    end
  end
end
