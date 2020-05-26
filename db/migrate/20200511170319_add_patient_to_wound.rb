class AddPatientToWound < ActiveRecord::Migration[6.0]
  def change
    add_reference :wounds, :patient, null: true, foreign_key: true
  end
end
