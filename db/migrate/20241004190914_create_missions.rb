class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.references :apartment, null: false, foreign_key: true
      t.references :cleaner, null: false, foreign_key: true
      t.string :status
      t.datetime :date

      t.timestamps
    end
  end
end
