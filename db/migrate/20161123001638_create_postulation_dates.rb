class CreatePostulationDates < ActiveRecord::Migration
  def change
    create_table :postulation_dates do |t|
      t.string :name
      t.date :date_begin
      t.date :date_end
      t.string :user_type
      t.integer :postulation_standard_id
      t.boolean :state
      t.integer :region_id

      t.timestamps null: false
    end
  end
end
