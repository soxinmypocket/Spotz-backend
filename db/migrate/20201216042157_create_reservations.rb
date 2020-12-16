class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :restaurant_name
      t.integer :party_size
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
