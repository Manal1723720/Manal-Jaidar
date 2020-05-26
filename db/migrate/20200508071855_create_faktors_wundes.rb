class CreateFaktorsWundes < ActiveRecord::Migration[6.0]
  def change
    create_table :faktors_wundes do |t|
      t.references :faktor
      t.references :wunde

      t.timestamps
    end
  end
end
