class CreateBenefitRequesteds < ActiveRecord::Migration
  def change
    create_table :benefit_requesteds do |t|
      t.integer :benefit_type_id
      t.integer :estimated_investment
      t.text :comments
      t.integer :user_id
      t.integer :asociative_user_id
      t.integer :postulation_id

      t.timestamps null: false
    end
  end
end
