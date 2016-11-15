class CreateExtractedMineralTypes < ActiveRecord::Migration
  def change
    create_table :extracted_mineral_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
