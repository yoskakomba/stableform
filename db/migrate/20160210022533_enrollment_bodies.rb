class EnrollmentBodies < ActiveRecord::Migration
  def change
    create_table :enrollment_bodies do |t|
      t.integer :body_id, :enrollment_id
    end
  end
end
