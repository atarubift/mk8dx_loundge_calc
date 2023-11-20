class AddMogiTypeIdToMogis < ActiveRecord::Migration[7.0]
  def change
    add_reference :mogis, :mogi_type, foreign_key: true
  end
end
