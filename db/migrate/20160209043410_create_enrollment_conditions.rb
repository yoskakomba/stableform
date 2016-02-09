class CreateEnrollmentConditions < ActiveRecord::Migration
  def change
    create_table :enrollment_conditions do |t|
      t.integer :condition_id, :enrollment_id
    end
  end
end
