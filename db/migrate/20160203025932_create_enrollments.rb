class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :name
      t.string :last_name
      t.string :dob
      t.string :address
      t.string :suburb
      t.string :occupation
      t.integer :telephone
      t.integer :post_code
      t.text :past_medical_history
      t.text :medication
      t.text :symptoms
      t.timestamps
    end
  end
end
