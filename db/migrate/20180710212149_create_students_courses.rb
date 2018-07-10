class CreateStudentsCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :students_courses do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true
    end
  end
end
