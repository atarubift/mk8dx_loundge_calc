class Mogi < ApplicationRecord
  belongs_to :mogi_type
  has_many :mogi_results
  accepts_nested_attributes_for :mogi_results
end
