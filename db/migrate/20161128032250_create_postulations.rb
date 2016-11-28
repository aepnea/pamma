class CreatePostulations < ActiveRecord::Migration
  def change
    create_table :postulations do |t|
      t.integer :user_id
      t.integer :asociative_user_id
      t.integer :personal_backgrounds_id
      t.integer :family_group_id
      t.integer :pamma_participation_id
      t.integer :beneficiary_id
      t.integer :characterization_work_id
      t.integer :benefit_requested_id
      t.integer :representative_id

      t.timestamps null: false
    end
  end
end
