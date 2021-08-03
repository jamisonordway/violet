class AddAttributesToSections < ActiveRecord::Migration[5.2]
  def change
    add_reference :sections, :song, foreign_key: true
    remove_column :sections, :section_label
    remove_column :sections, :section_body
    add_column :sections, :label, :integer
    add_column :sections, :type, :string
    add_column :sections, :lyrics, :text
  end
end
