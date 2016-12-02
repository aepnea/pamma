class CreatePostulationStates < ActiveRecord::Migration
  def change
    create_table :postulation_states do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
