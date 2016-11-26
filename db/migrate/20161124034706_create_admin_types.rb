class CreateAdminTypes < ActiveRecord::Migration
  def change
    create_table :admin_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
