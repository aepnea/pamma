class CreateRetirementSystemTypes < ActiveRecord::Migration
  def change
    create_table :retirement_system_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
