class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.integer :salary
      t.string :edu

      t.timestamps
    end
  end
end
