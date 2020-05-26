class CreateFaktors < ActiveRecord::Migration[6.0]
  def change
    create_table :faktors do |t|
      t.string :fak_name

      t.timestamps
    end
  end
end
