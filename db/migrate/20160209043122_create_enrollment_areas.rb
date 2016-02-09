class CreateEnrollmentAreas < ActiveRecord::Migration
  def change
    create_table :enrollment_areas do |t|
      t.integer :area_id, :enrollment_id
    end
  end
end
