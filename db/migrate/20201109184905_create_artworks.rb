class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.string :name
      t.string :medium
      t.string :size

      t.timestamps
    end
  end
end
