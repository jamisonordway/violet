class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.column :mood_label, :string
      t.column :mood_description, :string
    end
  end
end
