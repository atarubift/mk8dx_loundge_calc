class AddTrackAndMogiIdToMogiResults < ActiveRecord::Migration[7.0]
  def change
    add_reference :mogi_results, :tracks, foreign_key: true
    add_reference :mogi_results, :mogis, foreign_key: true
  end
end
