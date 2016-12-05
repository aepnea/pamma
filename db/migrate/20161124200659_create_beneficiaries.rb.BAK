class CreateBeneficiaries < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.string :name
      t.string :rut
      t.string :address
      t.integer :age
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
