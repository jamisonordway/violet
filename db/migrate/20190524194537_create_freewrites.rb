class CreateFreewrites < ActiveRecord::Migration[5.2]
  def change
    create_table :freewrites do |t|
      t.column :freewrite_title, :string
      t.column :freewrite_body, :string
    end
  end
end
