class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :semster
      t.integer :section
      t.references :course, foreign_key: true
      t.integer :room_number

      t.timestamps
    end
  end
end
