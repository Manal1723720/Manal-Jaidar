class CreateKeims < ActiveRecord::Migration[6.0]
  def change
    create_table :keims do |t|
      t.string :keim_name

      t.timestamps
    end
  end
end
