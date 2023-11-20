class Track < ApplicationRecord
  belongs_to :track_category
  has_many :mogi_result
end
