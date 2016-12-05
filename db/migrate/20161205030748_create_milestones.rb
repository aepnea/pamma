class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :name
      t.text :description
      t.date :date_begin
      t.date :date_end
      t.integer :user_id
      t.integer :asociative_user_id

      t.timestamps null: false
    end
  end
end
