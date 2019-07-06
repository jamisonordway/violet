class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.column :score, :integer
    end
  end
end
