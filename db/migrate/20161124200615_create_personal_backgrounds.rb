class CreatePersonalBackgrounds < ActiveRecord::Migration
  def change
    create_table :personal_backgrounds do |t|
      t.integer :scholarship_type_id
      t.integer :retirement_system_type_id
      t.integer :activity_type
      t.integer :training_type_id
      t.integer :social_record_status_type_id
      t.integer :score
      t.date :last_poll
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
