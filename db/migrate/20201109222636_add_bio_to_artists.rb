class AddBioToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :bio, :string
  end
end
