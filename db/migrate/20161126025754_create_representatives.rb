class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.string :rut
      t.integer :gender_id
      t.string :address
      t.string :village
      t.integer :region_id
      t.integer :province_id
      t.integer :commune_id
      t.string :mobile
      t.string :landline
      t.integer :asociative_user_id

      t.timestamps null: false
    end
  end
end
