class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :profile_id
      t.integer :cohort_id
      t.integer :grade

      t.timestamps
    end
  end
end
