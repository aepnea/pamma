class CreateScholarshipTypes < ActiveRecord::Migration
  def change
    create_table :scholarship_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
