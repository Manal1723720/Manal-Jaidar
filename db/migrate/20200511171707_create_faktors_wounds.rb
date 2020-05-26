class CreateFaktorsWounds < ActiveRecord::Migration[6.0]
  def change
    create_table :faktors_wounds do |t|
      t.references :faktor, null: false, foreign_key: true
      t.references :wound, null: false, foreign_key: true
    end
  end
end
