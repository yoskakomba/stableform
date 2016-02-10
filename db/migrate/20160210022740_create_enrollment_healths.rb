class CreateEnrollmentHealths < ActiveRecord::Migration
  def change
    create_table :enrollment_healths do |t|
      t.integer :health_id, :enrollment_id
    end
  end
end
