class CreatePostulationDatePostulationStandards < ActiveRecord::Migration
  def change
    create_table :postulation_date_postulation_standards do |t|
      t.integer :postulation_date_id
      t.integer :postulation_standard_id

      t.timestamps null: false
    end
  end
end
