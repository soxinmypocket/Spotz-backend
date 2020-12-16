class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :restaurant_name
      t.integer :party_size
      t.string :date
      t.string :time

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
