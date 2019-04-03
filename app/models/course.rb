class Course < ApplicationRecord
  has_many :criterium, dependent: :destroy
  has_many :faculties, dependent: :destroy
  accepts_nested_attributes_for :criterium, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :faculties, allow_destroy: true, reject_if: :all_blank
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Course.create! row.to_hash
    end
    end
end
