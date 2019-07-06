class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.column :section_label, :string
      t.column :section_body, :string
    end
  end
end
