class AddCourseIdToCriteria < ActiveRecord::Migration[5.2]
  def change
    add_column :criteria, :course_id, :integer
  end
end
