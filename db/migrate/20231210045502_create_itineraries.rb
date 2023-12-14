class CreateItineraries < ActiveRecord::Migration[7.1]
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :price
      t.string :url
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
