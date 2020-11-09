class AddColumnToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :img_url, :string
  end
end
