class AddTracksCategoryIdToTracks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracks, :track_category, foreign_key: true
  end
end
