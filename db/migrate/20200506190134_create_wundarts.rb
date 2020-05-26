class CreateWundarts < ActiveRecord::Migration[6.0]
  def change
    create_table :wundarts do |t|
      t.string :art_name

      t.timestamps
    end
  end
end
