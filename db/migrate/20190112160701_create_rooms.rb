class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :rate
      t.integer :minibar
      t.references :guest, foreign_key: true
    end
  end
end
