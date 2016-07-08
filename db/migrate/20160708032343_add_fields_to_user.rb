class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :mobile, :string
  end
end
