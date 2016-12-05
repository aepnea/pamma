class CreatePammaParticipations < ActiveRecord::Migration
  def change
    create_table :pamma_participations do |t|
      t.string :previous_beneficiary
      t.integer :number_times
      t.integer :benefit_type_id
      t.integer :project_state_type_id
      t.integer :support_type_id
      t.integer :user_id
      t.integer :asociative_user_id

      t.timestamps null: false
    end
  end
end
