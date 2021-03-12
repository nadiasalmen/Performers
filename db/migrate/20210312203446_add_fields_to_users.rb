class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string
    add_column :users, :full_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :news, :boolean
  end
end
