class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :password, :string
      t.column :password_confirm, :string
    end
  end
end
