class AddFieldsToAsociativeUsers < ActiveRecord::Migration
  def change
    add_column :asociative_users, :name, :string
    add_column :asociative_users, :rut, :string
    add_column :asociative_users, :address, :string
    add_column :asociative_users, :village, :string
    add_column :asociative_users, :mobile, :string
    add_column :asociative_users, :landline, :string
    add_column :asociative_users, :region_id, :integer
    add_column :asociative_users, :province_id, :integer
    add_column :asociative_users, :commune_id, :integer
    add_column :asociative_users, :date_foundation, :date
    add_column :asociative_users, :partners_number, :integer
  end
end
