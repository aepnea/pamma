class CreateProjectStateTypes < ActiveRecord::Migration
  def change
    create_table :project_state_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
