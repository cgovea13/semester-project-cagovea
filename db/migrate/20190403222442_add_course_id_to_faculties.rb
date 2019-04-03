class AddCourseIdToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :course_id, :integer
  end
end
