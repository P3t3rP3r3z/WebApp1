class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.reference :student
      t.reference :section

      t.timestamps
    end
  end
end
