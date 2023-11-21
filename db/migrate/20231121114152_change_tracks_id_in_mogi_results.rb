class ChangeTracksIdInMogiResults < ActiveRecord::Migration[7.0]
  def change
    rename_column :mogi_results, :tracks_id, :track_id
  end
end
