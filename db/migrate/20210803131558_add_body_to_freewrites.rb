class AddBodyToFreewrites < ActiveRecord::Migration[5.2]
  def change
    add_column :freewrites, :body, :text
  end
end
