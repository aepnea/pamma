class CreateCharacterizationWorks < ActiveRecord::Migration
  def change
    create_table :characterization_works do |t|
      t.string :work_name
      t.string :localization
      t.string :sector
      t.string :mountain_range
      t.integer :region_id
      t.integer :province_id
      t.integer :commune_id
      t.float :utm_north_coordinate
      t.float :utm_east_coordinate
      t.string :buyer_power
      t.string :distance
      t.string :mining_district
      t.integer :number_workers
      t.integer :owner_type_id
      t.integer :mining_properties_constitution_type_id
      t.integer :operation_type_id
      t.integer :extracted_mineral_type_id
      t.integer :mining_information_available_type_id
      t.integer :user_id
      t.integer :asociative_user_id

      t.timestamps null: false
    end
  end
end
