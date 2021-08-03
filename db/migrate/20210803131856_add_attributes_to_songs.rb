class AddAttributesToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :message, :string
    add_column :songs, :mood, :string
    remove_column :songs, :lyrics
    add_reference :songs, :user, foreign_key: true
  end
end
