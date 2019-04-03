class Criterium < ApplicationRecord
  belongs_to :course, optional: true
end
