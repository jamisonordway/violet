class CreateProgressions < ActiveRecord::Migration[5.2]
  def change
    create_table :progressions do |t|
      t.references :section, foreign_key: true
      t.string :description
      t.text :content
    end
  end
end
