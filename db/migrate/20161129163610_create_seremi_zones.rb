class CreateSeremiZones < ActiveRecord::Migration
  def change
    create_table :seremi_zones do |t|
      t.string :name
      t.integer :region_id

      t.timestamps null: false
    end
  end
end
