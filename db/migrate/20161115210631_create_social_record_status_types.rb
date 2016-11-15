class CreateSocialRecordStatusTypes < ActiveRecord::Migration
  def change
    create_table :social_record_status_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
