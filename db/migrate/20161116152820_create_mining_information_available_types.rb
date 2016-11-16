class CreateMiningInformationAvailableTypes < ActiveRecord::Migration
  def change
    create_table :mining_information_available_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
