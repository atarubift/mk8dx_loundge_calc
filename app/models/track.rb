class Track < ApplicationRecord
  belongs_to :track_category
  has_many :mogi_results
end
