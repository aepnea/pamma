class CreateCommunes < ActiveRecord::Migration
  def change
    create_table :communes do |t|
      t.string :name
      t.integer :province_id

      t.timestamps null: false
    end
  end
end
