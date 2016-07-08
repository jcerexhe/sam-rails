class CreateLodgings < ActiveRecord::Migration[5.0]
  def change
    create_table :lodgings do |t|
      t.references :building, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
