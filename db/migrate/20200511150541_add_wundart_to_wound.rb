class AddWundartToWound < ActiveRecord::Migration[6.0]
  def change
    add_reference :wounds, :wundart, null: true, foreign_key: true
  end
end
