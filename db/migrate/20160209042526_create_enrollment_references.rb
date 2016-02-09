class CreateEnrollmentReferences < ActiveRecord::Migration
  def change
    create_table :enrollment_references do |t|
      t.integer :reference_id, :enrollment_id
    end
  end
end
