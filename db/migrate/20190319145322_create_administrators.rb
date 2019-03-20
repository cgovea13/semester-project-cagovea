class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :last_name
      t.string :first_name
      t.string :title
      t.string :office_number
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
