class AddTrackAndMogiIdToMogiResults < ActiveRecord::Migration[7.0]
  def change
    add_reference :mogi_results, :tracks, null: false, foreign_key: true
    add_reference :mogi_results, :mogi, null: false, foreign_key: true
  end
end
