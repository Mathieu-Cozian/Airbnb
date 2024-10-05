class AddClientToApartments < ActiveRecord::Migration[7.0]
  def change
    add_reference :apartments, :client, null: false, foreign_key: true, default: 1
  end
end
