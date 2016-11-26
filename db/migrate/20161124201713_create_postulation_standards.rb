class CreatePostulationStandards < ActiveRecord::Migration
  def change
    create_table :postulation_standards do |t|
      t.string :name
      t.integer :weighing
      

      t.timestamps null: false
    end
  end
end
