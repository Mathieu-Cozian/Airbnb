class RemoveRoleFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :role, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :phone_number, :string
  end
end
