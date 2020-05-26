class CreateSonstigs < ActiveRecord::Migration[6.0]
  def change
    create_table :sonstigs do |t|
      t.string :sonstig_name

      t.timestamps
    end
  end
end
