class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :city_state
      t.float :latitude
      t.float :longitude
      t.integer :zip_code

      t.timestamps
    end
  end
end
