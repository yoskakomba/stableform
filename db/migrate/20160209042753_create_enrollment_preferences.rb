class CreateEnrollmentPreferences < ActiveRecord::Migration
  def change
    create_table :enrollment_preferences do |t|
      t.integer :preference_id, :enrollment_id
    end
  end
end
