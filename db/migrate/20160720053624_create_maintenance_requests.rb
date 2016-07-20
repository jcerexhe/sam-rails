class CreateMaintenanceRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenance_requests do |t|
      t.references :user
      t.string :location
      t.text :description
      t.string :urgency
      t.string :status

      t.timestamps
    end
  end
end
