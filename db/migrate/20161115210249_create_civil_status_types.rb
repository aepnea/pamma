class CreateCivilStatusTypes < ActiveRecord::Migration
  def change
    create_table :civil_status_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
