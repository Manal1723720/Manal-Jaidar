class CreateWounds < ActiveRecord::Migration[6.0]
  def change
    create_table :wounds do |t|
      t.string :bezeichnung
      t.string :name
      
      t.timestamps
    end
  end
end
