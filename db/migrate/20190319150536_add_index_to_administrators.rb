class AddIndexToAdministrators < ActiveRecord::Migration[5.2]
  def change
    #add_column :administrators, :email, :string
    add_index :administrators, :email, unique: true
  end
end
