class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
