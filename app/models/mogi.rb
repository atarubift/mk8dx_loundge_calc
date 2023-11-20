class Mogi < ApplicationRecord
  belongs_to :mogi_type
  has_many :mogi_result
end
