class CreateCleaners < ActiveRecord::Migration[7.0]
  def change
    create_table :cleaners do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :status
      t.timestamps
    end
  end
end
