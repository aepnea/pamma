class CreateMiningPropertiesConstitutionTypes < ActiveRecord::Migration
  def change
    create_table :mining_properties_constitution_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
