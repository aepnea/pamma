class CreateGenderTypes < ActiveRecord::Migration
  def change
    create_table :gender_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
