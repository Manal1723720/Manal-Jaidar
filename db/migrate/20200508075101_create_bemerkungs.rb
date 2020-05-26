class CreateBemerkungs < ActiveRecord::Migration[6.0]
  def change
    create_table :bemerkungs do |t|
      t.string :bem_text
      t.boolean :istVorlage
      t.integer :hasManyBemerkungen_id
      t.string :hasManyBemerkungen_type

      t.timestamps
    end
  end
end
