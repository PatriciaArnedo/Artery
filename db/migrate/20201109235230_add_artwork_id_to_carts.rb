class AddArtworkIdToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :artwork_id, :integer
  end
end
