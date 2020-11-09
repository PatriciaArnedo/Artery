class CreateCartArts < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_arts do |t|
      t.integer :cart_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end
