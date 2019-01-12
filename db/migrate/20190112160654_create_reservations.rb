class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :last_name
      t.boolean :loyalty_member
    end
  end
end
