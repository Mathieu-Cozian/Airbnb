class RenameAndChangeTypeOfNbAppartmentsInClients < ActiveRecord::Migration[7.0]
  def change
    rename_column :clients, :nb_appartments, :nb_apartments
    change_column :clients, :nb_apartments, :integer, default: 0
  end
end
