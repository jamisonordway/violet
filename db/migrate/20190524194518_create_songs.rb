class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.column :title, :string
      t.column :lyrics, :string
    end
  end
end
