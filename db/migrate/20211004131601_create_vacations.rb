class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.integer :country_id
      t.integer :traveler_id
      t.boolean :favorite

      t.timestamps
    end
  end
end
