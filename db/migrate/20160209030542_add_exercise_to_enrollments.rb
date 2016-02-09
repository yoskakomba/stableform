class AddExerciseToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :exercise, :string
  end
end
