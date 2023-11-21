class AddUrlToMogi < ActiveRecord::Migration[7.0]
  def change
    add_column :mogis, :url, :string
  end
end
