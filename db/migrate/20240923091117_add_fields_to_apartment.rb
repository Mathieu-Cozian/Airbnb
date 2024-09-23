class AddFieldsToApartment < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :price_per_cleaning, :integer
    add_column :apartments, :sqm, :integer
    add_column :apartments , :number_of_rooms, :integer
  end
end
