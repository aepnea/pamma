class CreateFamilyGroups < ActiveRecord::Migration
  def change
    create_table :family_groups do |t|
      t.string :name
      t.integer :age
      t.integer :relationship_type_id
      t.string :activity
      t.integer :scholarship_type_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
