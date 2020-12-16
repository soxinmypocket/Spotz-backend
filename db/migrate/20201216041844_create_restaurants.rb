class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :neighborhood
      t.string :borough
      t.string :address
      t.string :service
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
