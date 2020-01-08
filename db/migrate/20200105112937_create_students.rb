class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.text :address
      t.string :aadhar_number
      t.string :status
      t.timestamps null: false
    end
  end
end
