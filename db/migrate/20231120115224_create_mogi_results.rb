class CreateMogiResults < ActiveRecord::Migration[7.0]
  def change
    create_table :mogi_results do |t|
      t.integer :rank

      t.timestamps
    end
  end
end
