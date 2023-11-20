class CreateMogis < ActiveRecord::Migration[7.0]
  def change
    create_table :mogis do |t|
      t.integer :total_score
      t.integer :team_rank
      t.integer :solo_rank

      t.timestamps
    end
  end
end
