class Administrator < ApplicationRecord
  validates :last_name, :first_name, :title, :office_number, :phone_number, :email, presence: true
  validates :email, uniqueness: true
end
