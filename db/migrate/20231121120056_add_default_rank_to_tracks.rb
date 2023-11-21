class AddDefaultRankToTracks < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tracks, :first, 0
    change_column_default :tracks, :second, 0
    change_column_default :tracks, :third, 0
    change_column_default :tracks, :fourth, 0
    change_column_default :tracks, :fifth, 0
    change_column_default :tracks, :sixth, 0
    change_column_default :tracks, :seventh, 0
    change_column_default :tracks, :eighth, 0
    change_column_default :tracks, :ninth, 0
    change_column_default :tracks, :tenth, 0
    change_column_default :tracks, :eleventh, 0
    change_column_default :tracks, :twelfth, 0
  end
end
