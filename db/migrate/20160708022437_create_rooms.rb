class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :lodging, foreign_key: true
      t.references :user, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
