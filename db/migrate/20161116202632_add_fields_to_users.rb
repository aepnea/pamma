class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :minning_society_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :surname, :string
    add_column :users, :rut, :string
    add_column :users, :birthdate, :date
    add_column :users, :gender_id, :integer
    add_column :users, :address, :string
    add_column :users, :village, :string
    add_column :users, :mobile, :string
    add_column :users, :landline, :string





  end
end
