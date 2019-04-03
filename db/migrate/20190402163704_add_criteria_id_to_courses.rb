class AddCriteriaIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :criteria_id, :integer, null: true
  end
end
